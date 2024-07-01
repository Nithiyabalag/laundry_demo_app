import React, { useState, useEffect } from 'react';
import './App.css';
import CosmsList from './components/CosmsList';

function App() {
  const [cosms, setCosms] = useState([]);

  useEffect(() => {
    // Function to fetch data
    const fetchData = async () => {
      try {
        const response = await fetch('https://localhost/api/v1/cosms'); // Replace with your API endpoint
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        const data = await response.json();
        setCosms(data); // Update state with fetched data
      } catch (error) {
        console.error('Error fetching data:', error);
        // Handle error as needed
      }
    };

    fetchData(); // Call fetchData when component mounts

    // Clean-up function (optional)
    return () => {
      // Any clean-up code
    };
  }, []); // Empty array means this effect runs only on mount

  return (
    <div className="App">
      <header className="App-header">
        <h1>My Cosmtics App</h1>
      </header>
      <main>
        <CosmsList cosms={cosms} />
      </main>
    </div>
  );
}

export default App;
