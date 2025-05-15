const db = require('../config/db');

const Curso = {
  // Cria um novo curso
  async create(nome) {
    const query = 'INSERT INTO curso (nome) VALUES ($1) RETURNING *';
    const result = await db.query(query, [nome]);
    return result.rows[0];
  },

  // Atualiza o nome de um curso
  async update(id, nome) {
    const query = 'UPDATE curso SET nome = $1 WHERE id = $2 RETURNING *';
    const result = await db.query(query, [nome, id]);
    return result.rows[0];
  },

  // Deleta um curso pelo ID
  async delete(id) {
    const query = 'DELETE FROM curso WHERE id = $1';
    await db.query(query, [id]);
  }
};

module.exports = Curso;


