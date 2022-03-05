type query = Home | Phone({ phone: string }) | Brand({ brand: string }) | PriceRange({ priceRange: string })
type phone = {
  phone: string
}

@react.component
let default = (~data) => {

  module Router = Next.Router
  // open Router
  // Js.log(Router.useRouter().query)

  // let query: query = Router.useRouter().query

  // Js.log(Js.Dict.keys(Router.useRouter().query)[0])
  // Js.Dict.get(Router.useRouter().query), "phone")
  // Js.log2("PHONE: ", Js.Dict.get(Router.useRouter().query, "phone"))

  let queries = list{"phone", "brand", "priceRange"}
  // let checkQueryList = (query) => {
  //   query != None
  // }
  // let query = queries 
  // |> List.map((q) => Js.Dict.get(Router.useRouter().query, q))
  // |> List.find(checkQueryList)
  // Js.log(query)

  // let s = switch Router.useRouter().query {

  // }

  let query = queries 
  |> List.find_opt((q) => {
    switch Js.Dict.get(Router.useRouter().query, q) {
      | Some(_) => true
      | None => false
    }
  })

  // Js.log(List.map((q) => Js.Dict.get(Router.useRouter().query, q), queries))
  

  let headerText = switch query {
    | Some(v) => v
    | _ => "Mobile History Rating"
  }

  

  // let query: query = {
  //   ...Router.useRouter().query
  // }

  // let query: Js.Dict.t<query> = Router.useRouter().query

  <div>
    <Header text={headerText} />
    <Table phones={data} />
  </div>
}