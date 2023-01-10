import { 
    acessarProductId, 
    users,
    products ,
    acessarProductsName,
    createPurchase,
    getAllPurchasesFromUserId, 
    purchases
} from "./database";
import cors from 'cors'

//importando o express 👇🏽
import express, { Request, Response } from 'express'
import { TProduct, TUser, TPurchase  } from "./types";

//invocando a função express() dentro da variável app 👇🏽
const app = express();// console.log(acessarProductsName("mouse"));
// console.log(createPurchase("1", "1", 3, 15));
app.use(express.json())
app.use(cors())

app.listen(3003, () => {
    console.log("Servidor rodando na porta 3003")
})

app.get("/users", (req: Request, res: Response) => {
res.status(200).send(users)
})
app.get("/products", (req: Request, res: Response) => {
    res.status(200).send( products )
    })
app.get("/product/search", (req:Request, res: Response)=>{
        const q= req.query.q as string
         const productsFilter=products.filter((product)=>product.name.includes(q))
     res.status(200).send(productsFilter)
     })

     //Criando novo usuário

     app.post("/users", (req: Request, res: Response )=>{
        const id = req.body.id
        const email = req.body.email
        const password = req.body.password



        const newUser: TUser ={
            id,
            email,
            password,

        }
    users.push(newUser)
    res.status(201).send("Cadastro realizado com sucesso")
    })

    //Criando novo produto com o POST
    app.post("/products", (req: Request, res: Response )=>{
        const id = req.body.id
        const name = req.body.name
        const price = req.body.price
        const category = req.body.category




        const newProduct: TProduct ={
            id,
            name,
            price,
            category

        }
    products.push(newProduct)
    res.status(201).send("Produto cadastrado com sucesso")
    })
//Compra criada com o POST

app.post("/purchase", (req:Request, res:Response)=>{
    const userId= req.body.userId
    const productId=req.body.productId
    const quantity= req.body.quantity
    const totalPrice= req.body.totalPrice

  const newPurchase: TPurchase ={userId, productId, quantity, totalPrice}
  purchases.push(newPurchase)
  res.status(201).send("Compra realizada com sucesso")

  })


  const nome = process.argv[2]

console.log(Olá, meu nome é ${nome})