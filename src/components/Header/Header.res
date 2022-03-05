@react.component
let make = (~text) => {

  <div className="flex items-center mx-auto w-fit h-36">
    <p className="text-2xl h-fit font-extrabold tracking-wide">{text -> React.string}</p>
  </div>
}
