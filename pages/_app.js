import MainDataContextProvider from '../src/components/Context/MainDataContext'
import '../styles/globals.css'
import '../styles/output.css'

function MyApp({ Component, pageProps }) {
  // console.log(pageProps)
  return (
    <MainDataContextProvider>
      <Component {...pageProps} />
    </MainDataContextProvider>
  )
}

export default MyApp
