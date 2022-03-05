
export const getServerSideProps = async (ctx) => {
  const queryExists = !!ctx.params;
  console.log("getServerSideProps");
  const queryParam = queryExists ? ctx.params[Object.keys(ctx.params)[0]] : "";
  const data = await fetch(`http://localhost:5001/api/v1/phones/${queryParam}`);
  const { data: { phones } } = await data.json()
  
  return {
    props: {
      data: phones
    }
  }
}