import { useRouter } from 'next/router'
import App from '../../src/components/App'
import { useState, useEffect, useContext, useCallback } from 'react'
import { MainDataContext } from '../../src/components/Context/MainDataContext'
export { getServerSideProps } from '../../src/utils/handleRequests'

export default function Brand({ data }) {

  const mainDataContext = useContext(MainDataContext)
  const [_, setMainData] = mainDataContext()


  useEffect(() => {
    setMainData(data)
    refreshData()
  }, [data, setMainData, refreshData])

  const router = useRouter()
  // console.log(state)

  const refreshData =  useCallback(() => {
    router.replace(router.asPath);
  }, [router])

  // const refreshData = () => {
  //   router.replace(router.asPath);
  // }

  // const handleChangeData = () => {
  //   refreshData()
  // }
  
  return (
    <div onClick={() => refreshData()}>
      <App data={data} />
    </div>
  )
}

// export const getServerSideProps = async (ctx) => {
//   const data = await fetch(`http://localhost:5001/api/v1/phones/${ctx.params.brand}`);
//   const { data: { phones } } = await data.json()


//   return {
//     props: {
//       data: phones
//     }
//   }
// }