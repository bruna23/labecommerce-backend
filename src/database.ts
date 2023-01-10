import { TUser } from "./types"
import { TProduct } from "./types"
import { TPurchase } from "./types"

export const users: TUser[] = [
  {
      id: '01',
      email: 'bruna@gmail.com',
      password: 'a15daf'
    }, {
      id: '02',
      email: 'eubru@gmail.com',
      password: 'akhsag4'
    }]

export const product: TProduct[]=[
    {
        id: "02",
        name: "bruna",
        price: 35,
        category: "pessoa"
    },
    {
        id: "03",
        name: "bianca",
        price: 350,
        category: "pessoas"  
    }
]

export const purchase: TPurchase[]=[
    {
    userld: "03",
    productld: "celular",
    quantity: 5,
    totalPrice: 2500,
    },
    {
        userld: "04",
        productld: "notebook",
        quantity: 15,
        totalPrice: 5500,

    }
]