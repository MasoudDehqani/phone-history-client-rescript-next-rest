import { createContext, useState } from "react";

export const MainDataContext = createContext({})

export default function MainDataContextProvider({ children }) {
  // const [data, setData] = useState({})

  return (
    <MainDataContext.Provider value={useState({})}>
      {children}
    </MainDataContext.Provider>
  )
}