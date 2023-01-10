import { 
    acessarProductId, 
    acessarProductsName,
    createPurchase,
    getAllPurchasesFromUserId 
} from "./database";

console.log(acessarProductsName("teclado"));
console.log(createPurchase("1", "1", 3, 15));
//console.log(users, product, purchase)


//console.log("usuarios:\n", users, "produtos:\n", product, "compra realizada pelo cliente:\n", purchase )