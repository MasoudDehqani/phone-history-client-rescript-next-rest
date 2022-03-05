import { useRouter } from 'next/router'
import App from '../../src/components/App'
export { getServerSideProps } from '../../src/utils/handleRequests'

export default function Brand({ data }) {

  const router = useRouter()
  
  return (
    <App data={data} />
  )
}

// export const getServerSideProps = async (ctx) => {
//   const data = await fetch(`http://localhost:5001/api/v1/phones/${ctx.params.priceRange}`);
//   const { data: { phones } } = await data.json()


//   return {
//     props: {
//       data: phones
//     }
//   }
// }