import React, {useState} from 'react'

const Counter = (props) => {
  const [count, setCount] = useState(props.count)

  const UpdateCount = () => {
    setCount(count + 1)
  }

  return(
    <div>
      <p>Count: {count}</p>
      <button onClick={UpdateCount}>
        Count Up</button>
    </div>
  )
}

export default Counter;
