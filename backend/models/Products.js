const mongoose = require("mongoose");

// schema definition
const productSchema = new mongoose.Schema(
  {
    pid: { type: String, required: true },
    name: { type: String, required: true },
    mrp: { type: Number, required: true },
    currprice: { type: Number, required: true },
    store: { type: String, required: true },
    image: { type: String, required: true },
  },
  { timestamps: true } //hello
);

module.exports = mongoose.model("Product", productSchema);
