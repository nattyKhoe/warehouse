import styles from './style.css';
import React, { useState } from 'react';
import { useHistory } from 'react-router-dom';

function Login() {
  const [username, setUsername] = useState('');
  const [password, setPassword] = useState('');
  const history = useHistory();

  const handleUsernameChange = (event) => {
    setUsername(event.target.value);
  };

  const handlePasswordChange = (event) => {
    setPassword(event.target.value);
  };

  const handleSubmit = (event) => {
    event.preventDefault();

    fetch('/login', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json'
    },
      body: JSON.stringify({ username, password })
    })
    .then(response => response.json())
    .then(data => {
      if (data.success) {
        // successful login, redirect to dashboard
        history.push('/dashboard');
      } else {
        // failed login, display error message
        alert(data.message);
      }
    })
    .catch(error => console.log(error));
  };

  return (
    <div>
      <h1>Login Page</h1>
      <form onSubmit={handleSubmit}>
        <div>
          <label htmlFor="Username">Username:</label>
          <input type="username" id="username" name="username" value={username} onChange={handleUsernameChange} required />
        </div>
        <div>
          <label htmlFor="password">Password:</label>
          <input type="password" id="password" name="password" value={password} onChange={handlePasswordChange} required />
        </div>
        <button type="submit">Login</button>
      </form>
    </div>
  );
}

export default Login;
