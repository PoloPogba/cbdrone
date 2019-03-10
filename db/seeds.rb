# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

category = Category.create!([
  {
    title: "Weeds",

  },
  {
    title: "Resines",

  },
  {
    title: "Accessoires",

  }
])

items = Item.create!([
  {
    title: "Lemon AYS",
    description: "Le best du best! Ceci vous rendra créatif, mais ne guaranti pas une réussite en code...",
    price: 14.99,
    image_url: "weedhd.jpg",
    category_id: 1
  },
 
  {
    title: "Purple AYS",
    description: "La fameuse, douce et chaleureuse... rien à envier à sa grande soeur Lemon",
    price: 17.99,
    image_url: "cbd-lemon-cake_01.jpg",
    category_id: 1
  },
  {
    title: "Bubble",
    description: "Extraits naturels de Malabar. Cultivé et peaufiné dans la sainteté de l'usine Haribo",
    price: 14.99,
    image_url: "bubble.jpeg",
    category_id: 1
  },
  {
    title: "skunk",
    description: "La skunk CBD n'est plus à présenter. Elle a fait ses preuves au fil des décénnies",
    price: 15.99,
    image_url: "shutterstock_685310482-1.png",
    category_id: 1
  },
  {
    title: "Résine Marocaine",
    description: "Très belle résine cultiver par nos soins. Woulah cé du lour",
    price: 19.99,
    image_url: "marroco-pollen-cbd.jpeg",
    category_id: 2
  },
  {
    title: "Afghan",
    description: " La meilleure résine disponible sur le marché. N'attendez plus !'Osez la qualité' ",
    price: 21.99,
    image_url: "hashhd.jpg",
    category_id: 2
  },
  {
    title: "Népalais",
    description: "T'inquiète pas ma frèr c'est du compressé",
    price: 19.99,
    image_url: "shc-6.jpg",
    category_id: 2
  },
  {
    title: "Polo Pogba",
    description: "Nous non plus ne connaissons pas les effets de cette huile magique, mais il paraît que vous allez adorer Aleks",
    price: 4,
    image_url: "oilhd.jpg",
    category_id: 3
  },
  {
    title: "Motor Oil",
    description: "Huile cultivé dans les meilleurs conditions en Suisse, aux extraits naturels de CBD ",
    price: 29.99,
    image_url: "huile-au-cbd-10-1000mg.jpg",
    category_id: 3
  },
  {
    title: "Oilster",
    description: "Le homar de l'huile, la meilleure sur le marché, vous ne serez las déçu.. Osez la perfection naturelle !",
    price: 40.99,
    image_url: "huile-cbd-30.png",
    category_id: 3
  },
  {
    title: "Skunk oil",
    description: "Provenance : Colombie. Escobar nous fait un cadeau, profitons-en ",
    price: 29.99,
    image_url: "huile-de-chanvre-au-cbd-pure-gold-kannaway.jpg",
    category_id: 3
  },
  {
    title: "CBD Cream",
    description: "Beaume du tigre au extraits naturels de CBD. ",
    price: 19.99,
    image_url: "creme-baume-a-1-de-cbd.jpg.png",
    category_id: 3
  },
  {
    title: "CBD Cream Gold version",
    description: "Parfait pour la récupération sportive, les blessures, ou les massages intimes...  ",
    price: 34.99,
    image_url: "balsam-gold.jpg",
    category_id: 3
  },
  {
    title: "E-liquide CBD menth",
    description: "Concentration en CBD optimale pour une relaxation intense. Arretez la combustion inutile et passer au CBD à vapoter.   ",
    price: 9.99,
    image_url: "booster-cbd-n.jpg",
    category_id: 3
  },
  {
    title: "E-liquide Weex",
    description: "l'E-liquide le plus vendu sur le marché. Une réputation qui n'est pas à faire. Extraits naturels de chanvre.  ",
    price: 9.99,
    image_url: "e-liquide-cbd-care-full-spectre-blueberry.jpg.png",
    category_id: 3
  }
])
