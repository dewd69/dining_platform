CREATE TABLE users (
    user_id      BIGSERIAL PRIMARY KEY,
    email        VARCHAR(255) UNIQUE NOT NULL,
    password     CHAR(60) NOT NULL,
    username     VARCHAR(50) UNIQUE NOT NULL,
    profile_url  TEXT,
    role         VARCHAR(20) NOT NULL DEFAULT 'STUDENT',
    created_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),
    updated_at   TIMESTAMPTZ NOT NULL DEFAULT NOW(),

    CONSTRAINT chk_email_domain
        CHECK (email LIKE '%@iiitkota.ac.in'),
    CONSTRAINT chk_role
        CHECK (role IN ('STUDENT', 'ADMIN'))
);
