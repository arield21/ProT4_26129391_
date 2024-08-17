import { Router } from 'express';
import { libro } from './controller.js';

export const router = Router();

router.get('/libros', libro.getAll);
router.get('/libro/:id', libro.getOne); // Nueva ruta para obtener un libro por ID
router.post('/libro', libro.add);
router.put('/libro/:id', libro.update); // Nueva ruta para actualizar un libro
router.delete('/libro/:ISBN', libro.delete); // Nueva ruta para eliminar un libro