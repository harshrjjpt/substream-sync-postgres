CREATE SCHEMA my_schema3;

CREATE TABLE my_schema3.blocks (
    id          text not null constraint block_meta_pk primary key,
    number      integer,
    parent_hash text,
    receipt_root text,
    gas_limit text,
    gas_used text,
    timestamp   text,
    size        int
);

CREATE TABLE my_schema3.cursors (
    id         text not null constraint cursor_pk primary key,
    cursor     text,
    block_num  bigint,
    block_id   text
);

CREATE SCHEMA eth;

CREATE TABLE eth.block_meta (
    id          text not null constraint block_meta_pk primary key,
    number      integer,
    parent_hash text,
    receipt_root text,
    gas_limit text,
    gas_used text,
    timestamp   text,
    size        int,
    nonce       int
);

CREATE TABLE eth.cursors (
    id         text not null constraint cursor_pk primary key,
    cursor     text,
    block_num  bigint,
    block_id   text
);

CREATE TABLE eth.transactions (
    id         text not null constraint transactions_pk primary key,
    status     text,
    gas_used   bigint,
    gas_limit  text,
    block_number bigint,
    timestamp  text,
    hash       text,
    to_address text,
    from_address   text
);

CREATE TABLE eth.contracts (
    id         text not null constraint contracts_pk primary key,
    block_number bigint,
    owner        text,
    address      text,
    transaction_hash text,
    timestamp      text
    
);




