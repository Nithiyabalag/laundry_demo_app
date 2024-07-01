
// src/components/CosmsList.js
import React, { useState, useEffect } from 'react';
import axios from 'axios';

function CosmsList() {
  const [cosms, setCosms] = useState([]);

  useEffect(() => {
    // Using axios for fetching data
    axios.get('localhost:3000/api/v1/cosms')
      .then(response => {
        setCosms(response.data);
      })
      .catch(error => {
        console.error('Error fetching data:', error);
      });

    // Using fetch API for fetching data (alternative)
    // fetch('http://localhost:3000/api/v1/cosms')
    //   .then(response => response.json())
    //   .then(data => setCosms(data))
    //   .catch(error => console.error('Error fetching data:', error));
  }, []); // Empty dependency array ensures the effect runs only once

  return (
    <div>
      <h1>Cosms List</h1>
      <ul>
        {cosms.map(Cosm => (
          <li key={Cosm.id}>
            <strong>ID:</strong> {Cosm.id}, <strong>Name:</strong> {Cosm.name}, <strong>Price:</strong> ${Cosm.price}
          </li>
        ))}
      </ul>
    </div>
  );
}

export default CosmsList;
