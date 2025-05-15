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