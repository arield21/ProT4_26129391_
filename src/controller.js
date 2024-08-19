import { pool } from './database.js';

class LibroController {
    async getAll(req, res) {
        try {
            const [result] = await pool.query('SELECT * FROM libros');
            res.json(result);
        } catch (error) {
            res.status(500).json({ error: 'Error al obtener los libros' });
        }
    }

    async getOne(req, res) {
        const { id } = req.params;
        try {
            const [result] = await pool.query('SELECT * FROM libros WHERE id = ?', [id]);
            if (result.length === 0) {
                return res.status(404).json({ error: 'Libro no encontrado' });
            }
            res.json(result[0]);
        } catch (error) {
            res.status(500).json({ error: 'Error al obtener el libro' });
        }
    }

    async add(req, res) {
        const libro = req.body;
        try {
            const [result] = await pool.query(`INSERT INTO libros(nombre, autor, categoria, ano_publicacion, ISBN) VALUES (?, ?, ?, ?, ?)`, [libro.nombre, libro.autor, libro.categoria, libro.ano_publicacion, libro.ISBN]);
            res.json({ "Id insertado": result.insertId});
        } catch (error) {
            res.status(500).json({ error: 'Error al agregar el libro' });
        }
    }

    async update(req, res) {
        const { id } = req.params;
        const libro = req.body;
        try {
            const [result] = await pool.query(`UPDATE libros SET nombre = ?, autor = ?, categoria = ?, ano_publicacion = ?, ISBN = ? WHERE id = ?`, [libro.nombre, libro.autor, libro.categoria, libro.ano_publicacion, libro.ISBN, id]);
            if (result.affectedRows === 0) {
                return res.status(404).json({ error: 'Libro no encontrado' });
            }
            res.json({ message: 'Libro actualizado' });
        } catch (error) {
            res.status(500).json({ error: 'Error al actualizar el libro' });
        }
    }

    async delete(req, res) {
        const { ISBN } = req.params;
        try {
          const [deletedBook] = await pool.query('SELECT * FROM libros WHERE ISBN = ?', [ISBN]);
          if (deletedBook.length === 0) {
            return res.status(404).json({ error: 'Libro no encontrado' });
          }
          
          const [result] = await pool.query('DELETE FROM libros WHERE ISBN = ?', [ISBN]);
          if (result.affectedRows === 0) {
            return res.status(500).json({ error: 'Error al eliminar el libro' });
          }
          
          res.json({ message: 'Libro eliminado', Libro: deletedBook[0] });
        } catch (error) {
          res.status(500).json({ error: 'Error al eliminar el libro' });
        }
}

export const libro = new LibroController();
