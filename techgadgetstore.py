import mysql.connector
import statistics
from datetime import datetime

# Configuração da conexão com o banco de dados
conexao = mysql.connector.connect(
    host='localhost',
    user='root',
    password='V1nicius',
    database='techgadgetstore',
)

cursor = conexao.cursor()

def obter_dados_cliente():
    return {
        'nome': input("Digite o nome do cliente: "),
        'sobrenome': input("Digite o sobrenome do cliente: "),
        'email': input("Digite o email do cliente: "),
        'telefone': input("Digite o telefone do cliente: "),
        'endereco': input("Digite o endereço do cliente: "),
        'cidade': input("Digite a cidade do cliente: "),
        'estado': input("Digite o estado do cliente: "),
        'pais': input("Digite o país do cliente: "),
        'data_nascimento': input("Digite a data de nascimento do cliente (no formato YYYY-MM-DD): "),
        'genero': input("Digite o gênero do cliente (M/F): "),
    }

def criar_cliente():
    dados_cliente = obter_dados_cliente()

    inserir_cliente_query = """
    INSERT INTO cliente (nome, sobrenome, email, telefone, endereço, cidade, estado, país, data_nascimento, gênero)
    VALUES (%(nome)s, %(sobrenome)s, %(email)s, %(telefone)s, %(endereco)s, %(cidade)s, %(estado)s, %(pais)s, %(data_nascimento)s, %(genero)s)
    """

    cursor.execute(inserir_cliente_query, dados_cliente)
    conexao.commit()

    print("Cliente criado com sucesso!")

def obter_dados_fornecedor():
    return {
        'nome': input("Digite o nome do fornecedor: "),
        'endereco': input("Digite o endereço do fornecedor: "),
        'telefone': input("Digite o telefone do fornecedor: "),
        'email': input("Digite o email do fornecedor: "),
    }

def criar_fornecedor():
    dados_fornecedor = obter_dados_fornecedor()

    inserir_fornecedor_query = """
    INSERT INTO fornecedor (nome, endereço, telefone, email)
    VALUES (%(nome)s, %(endereco)s, %(telefone)s, %(email)s)
    """

    cursor.execute(inserir_fornecedor_query, dados_fornecedor)
    conexao.commit()

    print("Fornecedor criado com sucesso!")

def obter_dados_pedido():
    return {
        'data': input("Digite a data do pedido (no formato YYYY-MM-DD): "),
        'hora': input("Digite a hora do pedido: "),
        'produtos': input("Digite os produtos do pedido (no formato JSON): "),
        'valor_total': input("Digite o valor total do pedido: "),
    }

def criar_pedido():
    dados_pedido = obter_dados_pedido()

    inserir_pedido_query = """
    INSERT INTO pedido (data, hora, produtos, valor_total)
    VALUES (%(data)s, %(hora)s, %(produtos)s, %(valor_total)s)
    """

    cursor.execute(inserir_pedido_query, dados_pedido)
    conexao.commit()

    print("Pedido criado com sucesso!")

def obter_dados_produto():
    return {
        'nome': input("Digite o nome do produto: "),
        'descricao': input("Digite a descrição do produto: "),
        'preco': float(input("Digite o preço do produto: ")),
        'categoria': input("Digite a categoria do produto: "),
        'marca': input("Digite a marca do produto: "),
    }

def criar_produto():
    dados_produto = obter_dados_produto()

    inserir_produto_query = """
    INSERT INTO produto (nome, descrição, preço, categoria, marca)
    VALUES (%(nome)s, %(descricao)s, %(preco)s, %(categoria)s, %(marca)s)
    """

    cursor.execute(inserir_produto_query, dados_produto)
    conexao.commit()

    print("Produto criado com sucesso!")

def obter_dados_transportadora():
    return {
        'nome': input("Digite o nome da transportadora: "),
        'endereco': input("Digite o endereço da transportadora: "),
        'telefone': input("Digite o telefone da transportadora: "),
        'email': input("Digite o email da transportadora: "),
    }

def criar_transportadora():
    dados_transportadora = obter_dados_transportadora()

    inserir_transportadora_query = """
    INSERT INTO transportadora (nome, endereço, telefone, email)
    VALUES (%(nome)s, %(endereco)s, %(telefone)s, %(email)s)
    """

    cursor.execute(inserir_transportadora_query, dados_transportadora)
    conexao.commit()

    print("Transportadora criada com sucesso!")

def calcular_idade(data_nascimento):
    # Função para calcular a idade com base na data de nascimento
    # Assume que a data de nascimento está no formato YYYY-MM-DD
    data_nascimento = datetime.strptime(data_nascimento, "%Y-%m-%d")
    hoje = datetime.now()
    idade = hoje.year - data_nascimento.year - ((hoje.month, hoje.day) < (data_nascimento.month, data_nascimento.day))
    return idade

def estatisticas_descritivas_idade():
    # Função para calcular estatísticas descritivas da idade dos clientes
    # com base na data de nascimento
    cursor.execute("SELECT data_nascimento FROM cliente")
    datas_nascimento = [row[0] for row in cursor.fetchall()]
    idades = [calcular_idade(data) for data in datas_nascimento]

    print("Estatísticas Descritivas da Idade:")
    print(f"Média: {statistics.mean(idades)} anos")
    print(f"Moda: {statistics.mode(idades)} anos")
    print(f"Mediana: {statistics.median(idades)} anos")
    print(f"Desvio Padrão: {statistics.stdev(idades)} anos")    

# Exemplo de uso:
criar_cliente()
criar_fornecedor()
criar_pedido()
criar_produto()
criar_transportadora()
estatisticas_descritivas_idade()

# ...

# Fecha o cursor e a conexão
cursor.close()
conexao.close()
