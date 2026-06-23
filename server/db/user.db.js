const pool = require('../config/db');

const findUserByEmail = async (email) => {
    const query = `
        SELECT user_id, email, username, password, role
        FROM users
        WHERE email = $1
    `;
    try {
        const result = await pool.query(query, [email]);
        return result.rows[0]; 
    } catch (err) {
        console.error('db/findUserByEmail error:', err.message);
        throw err;
    }
};

const createUser = async (email, username, hashedPassword) => {
    const query = `
        INSERT INTO users (email, username, password)
        VALUES ($1, $2, $3)
        RETURNING user_id, email, username, role, created_at
    `;
    try {
        const result = await pool.query(query, [email, username, hashedPassword]);
        return result.rows[0];
    } catch (err) {
        console.error('db/createUser error:', err.message);
        throw err;
    }
};

module.exports = { findUserByEmail, createUser };