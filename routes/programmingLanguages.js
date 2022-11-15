const express = require("express");
const router = express.Router();
const programmingLanguages = require("../services/programmingLanguages");

/* GET programming languages. */

/**
 * @swagger
 * components:
 *   schemas:
 *     Languages:
 *       type: object
 *       properties:
 *        data:
 *         type: array
 *         items:
 *          $ref: '#/components/schemas/Language'
 *        meta:
 *         type: object
 *         properties:
 *          page:
 *           type : integer
 */

/**
 * @swagger
 * components:
 *   schemas:
 *     Language:
 *        type: object
 *        properties:
 *          id:
 *            type: integer
 *          name:
 *            type: string
 *          release_year:
 *            type: string
 *          githut_rank:
 *            type: integer
 *          pypl_rank:
 *            type : integer
 *          tiobe_rank:
 *            type : integer
 */

/**
 * @swagger
 * tags:
 *   name: Programming-languages
 *   description: The programming languages managing API
 */

/**
 * @swagger
 * /programming-languages:
 *   get:
 *     summary: Returns the list of all the programming language
 *     parameters:
 *       - in: query
 *         name: page
 *         description : "Pagination"
 *     tags: [Programming-languages]
 *     responses:
 *       200:
 *         description: The list of the programming language
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 $ref: '#/components/schemas/Languages'
 */

router.get("/", async function (req, res, next) {
  try {
    res.json(await programmingLanguages.getMultiple(req.query.page));
  } catch (err) {
    console.error(`Error while getting programming languages `, err.message);
    next(err);
  }
});

/* POST programming language */

/**
 * @swagger
 * /programming-languages:
 *   post:
 *     summary: Create a new programming language
 *     tags: [Programming-languages]
 *     requestBody:
 *       required: true
 *       content:
 *         application/json:
 *           schema:
 *             $ref: '#/components/schemas/Language'
 *     responses:
 *       200:
 *         description: The programming language was successfully created
 *         content:
 *           application/json:
 *             schema:
 *               $ref: '#/components/schemas/Language'
 *       500:
 *         description: Some server error
 */

router.post("/", async function (req, res, next) {
  try {
    res.json(await programmingLanguages.create(req.body));
  } catch (err) {
    console.error(`Error while creating programming language`, err.message);
    next(err);
  }
});

/* PUT programming language */

/**
 * @swagger
 * /programming-languages/{id}:
 *  put:
 *    summary: Update the programming language by the id
 *    tags: [Programming-languages]
 *    parameters:
 *      - in: path
 *        name: id
 *        schema:
 *          type: string
 *        required: true
 *        description: The programming language id
 *    requestBody:
 *      required: true
 *      content:
 *        application/json:
 *          schema:
 *            $ref: '#/components/schemas/Language'
 *    responses:
 *      200:
 *        description: The programming language was updated
 *        content:
 *          application/json:
 *            schema:
 *              $ref: '#/components/schemas/Language'
 *      404:
 *        description: The programming language was not found
 *      500:
 *        description: Some error happened
 */

router.put("/:id", async function (req, res, next) {
  try {
    res.json(await programmingLanguages.update(req.params.id, req.body));
  } catch (err) {
    console.error(`Error while updating programming language`, err.message);
    next(err);
  }
});

/* DELETE programming language */

/**
 * @swagger
 * /programming-languages/{id}:
 *   delete:
 *     summary: Remove the programming language by id
 *     tags: [Programming-languages]
 *     parameters:
 *       - in: path
 *         name: id
 *         schema:
 *           type: string
 *         required: true
 *         description: The programming language id
 *
 *     responses:
 *       200:
 *         description: The programming language was deleted
 *       404:
 *         description: The programming language was not found
 */

router.delete("/:id", async function (req, res, next) {
  try {
    res.json(await programmingLanguages.remove(req.params.id));
  } catch (err) {
    console.error(`Error while deleting programming language`, err.message);
    next(err);
  }
});

module.exports = router;
