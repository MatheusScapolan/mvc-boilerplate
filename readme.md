## **Aula 05:**  

## **Model:**  
O **Model** é a camada responsável pela **lógica de acesso aos dados** do banco de dados (regras de negócios). Com base na aula de hoje eu pude perceber que ele define como os dados são estruturados e as operações que podem ser realizadas, como criar, atualizar, buscar e deletar informações.  

No meu projeto, o arquivo `models/professor.js` é um exemplo de Model que foi criado no dia de hoje. Nele, eu tenho métodos como:  

- `findAll()`: busca todos os professores.  
- `create(nome, email)`: adiciona um novo professor ao banco.  
- `update(id, nome, email)`: atualiza as informações de um professor.  
- `delete(id)`: remove um professor do banco.  

**OBS:** Eu usei o chatgpt para poder me ajudar a entender a aplicação para `models/professor.js`, mas a definição foi feita com as minhas palavras.
---

## **Controller:**  
O **Controller** é a camada que **controla o fluxo de dados entre o Model e a View**. Ele recebe as requisições do usuário (cliente), faz as chamadas aos métodos do Model e devolve a resposta correta para a interface (Endpoints).  

No meu projeto, o arquivo `controllers/professorController.js` é um exemplo de Controller que foi criado na aula de hoje. Nele, é possível encontrar funções como:  

- `index()`: busca todos os professores e manda a lista para a View.  
- `create()`: chama o método do Model para criar um novo professor e redireciona para a página de listagem.  
- `update()`: chama o método do Model para atualizar os dados do professor.  
- `delete()`: chama o método do Model para excluir o professor.  

**OBS:** Eu usei o chatgpt para poder me ajudar a entender a aplicação para `controllers/professorController.js`, mas a definição foi feita com as minhas palavras.
---

## **Endpoint:**  
Um **Endpoint** é um "endereço" na minha aplicação que permite acessar ou modificar dados. É através dos endpoints que as requisições chegam aos Controllers.  

No arquivo `routes/professores.js` (da aula de hoje), eu defini os endpoints para cada operação, como:  

- `router.get('/', controller.index);`: quando alguém acessa `/professores`, o método `index()` é chamado e a lista de professores é mostrada.  
- `router.post('/', controller.create);`: ao enviar um formulário para `/professores`, o método `create()` é chamado para salvar um novo professor.  
- `router.post('/edit/:id', controller.update);`: ao enviar um formulário para `/professores/edit/:id`, o método `update()` é chamado para atualizar os dados.  
- `router.post('/delete/:id', controller.delete);`: ao enviar um formulário para `/professores/delete/:id`, o método `delete()` é chamado para excluir o professor.  

**OBS:** Eu usei o chatgpt para poder me ajudar a entender a aplicação para `routes/professores.js`, mas a definição foi feita com as minhas palavras.
---

## **Aula 06:**  

### 1. Explique com suas palavras o papel de cada camada da arquitetura MVC usada neste projeto. Como o Model, o Controller e a View interagem entre si?

## Explicação da arquitetura MVC usada no projeto

No nosso projeto, usamos a arquitetura MVC, que significa **Model**, **View** e **Controller**. Cada uma dessas partes tem um papel, o que ajuda bastante na organização do código e na organização, assim como passado em sala de aula.

- **Model**: cuida dos dados e da lógica por trás deles. É responsável por se comunicar com o banco de dados e saber como salvar, buscar ou atualizar as informações. Por exemplo, se tivermos uma lista de alunos, o Model sabe o que tem que ser feito.

- **Controller**: é como o "cérebro" da aplicação. Ele recebe os pedidos do usuário (como cliques ou formulários), conversa com o Model para pegar ou enviar dados, e depois escolhe o que vai ser mostrado para o usuário. Ele serve então como um intermediador.

- **View**: é o que o usuário vê. Ou seja, é a parte visual do sistema, a interface. Ela mostra os dados que o Controller manda e também permite que o usuário envie informações de volta para o sistema.

Essas três partes trabalham juntas como no esquema abaixo: 
**View** → envia uma ação → **Controller** → processa e conversa com → **Model** → retorna os dados para o **Controller** → e ele manda para a **View** mostrar.

---

### 2. Como ocorre o envio e o recebimento de dados no formato JSON neste projeto? Cite uma rota que responde em JSON e explique seu funcionamento.

No nosso projeto, usamos JSON para trocar informações entre o navegador e o servidor. JSON é um formato leve e fácil de entender pelas máquinas.

Por exemplo, temos uma rota como:

```
GET /alunos
```

Essa rota responde com uma lista de alunos em JSON. Quando acessamos ela, o servidor busca os dados no Model e devolve algo assim:

```json
[
  {
    "id": 1,
    "nome": "Tonho",
    "idade": 20
  },
  {
    "id": 2,
    "nome": "Tonha",
    "idade": 22
  }
]
```

Esse tipo de resposta é útil principalmente quando queremos consumir os dados em aplicações front-end, usando JavaScript, por exemplo.

---

### 3. Qual a importância de usar HTML básico com formulários e tabelas para organizar e manipular dados no navegador? Por que esse tipo de estrutura ainda é útil em projetos back-end com Node.js?

### Importância do HTML básico com formulários e tabelas

No nosso projeto, o HTML básico com formulários e tabelas para organizar e manipular dados no navegador, por exemplo, para listar informações (como uma tabela de alunos), criar formulários de cadastro, editar registros, entre outros, é muito útil para organizar e visualizar dados, uma vez que eles funcionam bem em qualquer navegador. Tudo isso diretamente do navegador, de forma prática e rápida.

Além disso, quando estamos desenvolvendo o back-end com Node.js, usar HTML e formulários facilita os testes e o desenvolvimento das funcionalidades, sem precisar de frameworks ou bibliotecas complexas.

---
```