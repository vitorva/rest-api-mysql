const express = require("express");
const router = express.Router();
const programmingLanguages = require("../services/programmingLanguages");

/* GET programming languages. */

/**
 * @swagger
 * components:
 *   schemas:
 *     Language:
 *       type: object
 *       properties:
 *         data:
 *          type: array
 *          items:
 *            type: object
 *            properties:
 *              id:
 *                type: integer
 *              name:
 *                type: date
 *              release_year:
 *                type: date
 *         meta:
 *          type: object
 *          properties:
 *           page:
 *            type : string
 *
 */

/**
 * @swagger
 * /programming-languages:
 *   get:
 *     summary: Returns the list of all the books
 *     tags: [Books]
 *     responses:
 *       200:
 *         description: The list of the books
 *         content:
 *           application/json:
 *             schema:
 *               type: array
 *               items:
 *                 $ref: '#/components/schemas/Language'
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
router.post("/", async function (req, res, next) {
  try {
    res.json(await programmingLanguages.create(req.body));
  } catch (err) {
    console.error(`Error while creating programming language`, err.message);
    next(err);
  }
});

/* PUT programming language */
router.put("/:id", async function (req, res, next) {
  try {
    res.json(await programmingLanguages.update(req.params.id, req.body));
  } catch (err) {
    console.error(`Error while updating programming language`, err.message);
    next(err);
  }
});

/* DELETE programming language */
router.delete("/:id", async function (req, res, next) {
  try {
    res.json(await programmingLanguages.remove(req.params.id));
  } catch (err) {
    console.error(`Error while deleting programming language`, err.message);
    next(err);
  }
});

module.exports = router;
