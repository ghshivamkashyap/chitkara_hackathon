const express = require("express");
const router = express.Router();

const { getProductById, addProduct, genrateBiill, securityCheck } = require("../controllers/products");

// Use a route parameter for 'pid'
router.get("/getproductbyid/:pid", getProductById);
router.get("/security/:billId", securityCheck);
router.post("/addproduct", addProduct);
router.post("/getbill", genrateBiill);


module.exports = router;
