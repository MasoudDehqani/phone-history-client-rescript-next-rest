
let mainDataContext = React.createContext("")

module MainDataContext = {
  module Provider = {
    let provider = React.Context.provider(mainDataContext)

    @react.component
    let make = (~value, ~children) => {
      React.createElement(provider, {"value": value, "children": children})
    }
  }
}

// module ThemedButton = {
//   @react.component
//   let make = () => {
//     let theme = React.useContext(ThemeContext.context)
//     let (color, backgroundColor) = switch theme {
//     | "dark" => ("#ffffff", "#222222")
//     | "light" | _ => ("#000000", "#eeeeee")
//     }

//     let style = ReactDOMStyle.make(~color, ~backgroundColor, ())

//     <button style> {React.string("I am a styled button!")} </button>
//   }
// }

// module Toolbar = {
//   @react.component
//   let make = () => {
//     <div> <ThemedButton /> </div>
//   }
// }

@react.component
let make = (~children) => {
  <MainDataContext.Provider value="dark">
  </MainDataContext.Provider>
}

// export const MainDataContext = createContext({})

// export default function MainDataContextProvider({ children }) {
//   // const [data, setData] = useState({})

//   return (
//     <MainDataContext.Provider value={useState({})}>
//       {children}
//     </MainDataContext.Provider>
//   )
// }