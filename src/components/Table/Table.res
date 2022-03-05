type phoneInfo = {
  id: string,
  brand: string,
  model: string,
  price_range: [#1 | #2 | #3 | #4 | #5]
}

@react.component
let make = (~phones) => {

  // let (mainData, setMainData) = React.useContext(MainDataContext)

  
  module Link = Next.Link
  let mapPhonesToTableRows = ({ id, brand, model, price_range }) => {

    // let handleDeleteData = () => {
    //   setMainData(prev => prev |> Js.Array.filter((ph) => ph.id !== id))
    // }

    let priceRangeSymbol = switch price_range {
      | #1 => "$"
      | #2 => "$$"
      | #3 => "$$$"
      | #4 => "$$$$"
      | #5 => "$$$$$"
    }

    let priceRangeString = switch price_range {
      | #1 => "1"
      | #2 => "2"
      | #3 => "3"
      | #4 => "4"
      | #5 => "5"
    }

    let tdClassName = "border text-center px-8 py-4"

    <tr key={id}>
      <td className={tdClassName}>
        <Link href=`/brands/${brand}`>
          <a>{brand -> React.string}</a>
        </Link>
      </td>
      <td className={tdClassName}>
        <Link href=`/phones/${model}`>
          <a>{model -> React.string}</a>
        </Link>
      </td>
      <td className={tdClassName}>
        <Link href=`/price-ranges/${priceRangeString}`>
          <a>{priceRangeSymbol -> React.string}</a>
        </Link>
      </td>
      // <td className={tdClassName}>
      //   <button onClick={handleDeleteData}></button>
      // </td>
    </tr>
  }

  <div className="flex justify-center w-full">
    <table className="shadow-lg bg-white">
      <thead>
        <tr>
          <th className="bg-blue-100 border text-center px-8 py-4">{"Brand" -> React.string}</th>
          <th className="bg-blue-100 border text-center px-8 py-4">{"Model" -> React.string}</th>
          <th className="bg-blue-100 border text-center px-8 py-4">{"Price Range" -> React.string}</th>
        </tr>
      </thead>
      <tbody>
        {Js.Array.map(mapPhonesToTableRows, phones) -> React.array}
      </tbody>
    </table>
  </div>
}