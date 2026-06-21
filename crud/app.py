from flask import Flask, render_template, request, redirect
from db import get_connection
from datetime import datetime

app = Flask(__name__)

# =========================
# READ - LISTAR CLIENTES
# =========================
@app.route("/")
def index():
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)

    cursor.execute("SELECT * FROM cliente")
    clientes = cursor.fetchall()

    conn.close()
    return render_template("index.html", clientes=clientes)


# =========================
# CREATE - NOVO CLIENTE
# =========================
@app.route("/create", methods=["GET", "POST"])
def create():
    if request.method == "POST":

        # ✔ conversão da data (solução do erro)
        data_nascimento = datetime.strptime(
            request.form["data_nascimento"],
            "%Y-%m-%d"
        ).date()

        conn = get_connection()
        cursor = conn.cursor()

        sql = """
        INSERT INTO cliente
        (nome, cpf, data_nascimento, telefone, email, data_cadastro,
         sexo, estado_civil, ativo, endereco)
        VALUES (%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)
        """

        valores = (
            request.form["nome"],
            request.form["cpf"],
            data_nascimento,
            request.form["telefone"],
            request.form["email"],
            request.form["data_cadastro"],
            request.form["sexo"],
            request.form["estado_civil"],
            request.form["ativo"],
            request.form["endereco"]
        )

        cursor.execute(sql, valores)
        conn.commit()
        conn.close()

        return redirect("/")

    return render_template("create.html")


# =========================
# UPDATE - EDITAR CLIENTE
# =========================
@app.route("/edit/<int:id>", methods=["GET", "POST"])
def edit(id):
    conn = get_connection()
    cursor = conn.cursor(dictionary=True)

    if request.method == "POST":

        sql = """
        UPDATE cliente SET
            nome=%s,
            cpf=%s,
            data_nascimento=%s,
            telefone=%s,
            email=%s,
            data_cadastro=%s,
            sexo=%s,
            estado_civil=%s,
            ativo=%s,
            endereco=%s
        WHERE id_cliente=%s
        """

        valores = (
            request.form["nome"],
            request.form["cpf"],
            request.form["data_nascimento"],
            request.form["telefone"],
            request.form["email"],
            request.form["data_cadastro"],
            request.form["sexo"],
            request.form["estado_civil"],
            request.form["ativo"],
            request.form["endereco"],
            id
        )

        cursor.execute(sql, valores)
        conn.commit()
        conn.close()

        return redirect("/")

    cursor.execute("SELECT * FROM cliente WHERE id_cliente=%s", (id,))
    cliente = cursor.fetchone()
    conn.close()

    return render_template("edit.html", cliente=cliente)


# =========================
# DELETE - EXCLUIR CLIENTE
# =========================
@app.route("/delete/<int:id>")
def delete(id):
    conn = get_connection()
    cursor = conn.cursor()

    # 🔎 verifica se existe vínculo
    cursor.execute("""
        SELECT COUNT(*) FROM sessao_tiro
        WHERE id_cliente = %s
    """, (id,))

    qtd = cursor.fetchone()[0]

    if qtd > 0:
        conn.close()
        return "❌ Não é possível excluir: cliente possui sessões vinculadas."

    cursor.execute("DELETE FROM cliente WHERE id_cliente = %s", (id,))
    conn.commit()

    conn.close()

    return redirect("/")


# =========================
# START SERVER
# =========================
if __name__ == "__main__":
    app.run(debug=True)