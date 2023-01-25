import { TUser, TProduct, TPurchase , PRODUCT_CATEGORY } from "./types"

export const users : TUser[] = [
    {
        id: "1",
        email: "bruna@mail.com",
        password: "123sdsadc"
    },
    {
        id: "2",
        email: "julio@mail.com",
        password: "a4dsfd56"
    },
    {
        id: "3",
        email: "bianca@mail.com",
        password: "bia24524"
    }
];

export const products : TProduct[] = [
    {
        id: "1",
        name: "Sunscreen",
        price: 5,
        category: PRODUCT_CATEGORY.ACCESSORIES
    },
    {
        id: "2",
        name: "Sneakers",
        price: 15,
        category: PRODUCT_CATEGORY.CLOTHES_AND_SHOES
    },
    {
        id: "3",
        name: "Shoes",
        price: 100,
        category: PRODUCT_CATEGORY.CLOTHES_AND_SHOES
    },
   
]

export const purchases : TPurchase[] = [
    {
        userId: "1",
        productId: "1",
        quantity: 1,
        totalPrice: 5
    },
    {
        userId: "2",
        productId: "2",
        quantity: 2,
        totalPrice: 30
    }
]

export function createUser(id : string, email : string, password : string) : string{
    users.push({
        id,
        email,
        password
    });
    return ("Cadastro realizado com sucesso");
}

export function getAllUsers() : TUser[]{
    return users;
}

export function createProduct(id : string, name : string, price : number, category : PRODUCT_CATEGORY) : string{
    products.push({
        id,
        name,
        price,
        category
    })
    return ("Produto criado com sucesso");
}
export function acessarProducts() : TProduct[]{
    return products;
}

export function acessarProductId(id : string) : (undefined | TProduct){
    return products.find(product => product.id === id);
}

export function acessarProductsName(q : string) : TProduct[]{
    return products.filter(product => product.name.toLowerCase().includes(q.toLowerCase()));
}

export function createPurchase(userId : string, productId : string, quantity : number, totalPrice : number) : string{
    purchases.push({
        userId,
        productId,
        quantity,
        totalPrice
    })
    return ("Compra realizada com sucesso");
}

export function getAllPurchasesFromUserId(userIdToSearch : string) : TPurchase[]{
    return purchases.filter(purchase => purchase.userId === userIdToSearch);
}