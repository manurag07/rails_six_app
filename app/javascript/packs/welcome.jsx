import React, {useState} from 'react'
import ReactDOM from 'react-dom'
import Counter from 'components/counter'

const Welcome = () => {
  return(
    <div>
      <h2>Welcome From React </h2>
      <Counter count = {0} />
    </div>
  )
}


document.addEventListener('DOMContentLoaded', () => {
  ReactDOM.render(
    <Welcome />,
    document.getElementById('welcome'),
  )
})
