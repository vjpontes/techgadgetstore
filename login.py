import mysql.connector
from mysql.connector import Error

def autenticar_usuario(username, password):
    try:
        conexao = mysql.connector.connect(
            host='localhost',
            user='root',
            password='V1nicius',
            database='techgadgetstore',
        )

        cursor = conexao.cursor()

        # Consulta para verificar se o usuário e senha correspondem
        consulta = "SELECT * FROM login WHERE username = %s AND password = %s"
        dados = (username, password)

        cursor.execute(consulta, dados)
        resultado = cursor.fetchone()

        if resultado:
            print("Autenticação bem-sucedida!")
        else:
            print("Nome de usuário ou senha incorretos.")

    except Error as e:
        print(f"Erro: {e}")

    finally:
        if conexao.is_connected():
            cursor.close()
            conexao.close()

def criar_usuario(username, password):
    try:
        conexao = mysql.connector.connect(
            host='localhost',
            user='root',
            password='V1nicius',
            database='techgadgetstore',
        )

        cursor = conexao.cursor()

        # Inserir novo usuário na tabela login
        insercao = "INSERT INTO login (username, password) VALUES (%s, %s)"
        dados = (username, password)

        cursor.execute(insercao, dados)
        conexao.commit()

        print("Usuário criado com sucesso!")

    except Error as e:
        print(f"Erro: {e}")

    finally:
        if conexao.is_connected():
            cursor.close()
            conexao.close()

# Exemplo de uso
opcao = input("Deseja autenticar (A) ou criar usuário (C)? ").upper()

if opcao == 'A':
    nome_usuario = input("Digite o nome de usuário: ")
    senha = input("Digite a senha: ")
    autenticar_usuario(nome_usuario, senha)
elif opcao == 'C':
    nome_usuario = input("Digite o novo nome de usuário: ")
    senha = input("Digite a nova senha: ")
    criar_usuario(nome_usuario, senha)
else:
    print("Opção inválida.")
