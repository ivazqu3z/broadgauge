create table users (
    id serial primary key,
    name text,
    email text unique not null,
    username text unique,
    phone text,
    city text,
    bio text,
    website text,
    github text,
    avatar_url text,
    is_admin boolean,
    is_trainer boolean,
    created timestamp default (current_timestamp at time zone 'UTC')
);

create table organization (
    id serial primary key,
    name text,
    city text
);

create table organization_members (
    id serial primary key,
    org_id integer not null references organization,
    user_id integer not null references users,
    role text,
    since timestamp default (current_timestamp at time zone 'UTC'),
    unique (org_id, user_id)
);

create table workshop (
    id serial primary key,
    org_id integer references organization,
    trainer_id integer references users,
    title text,
    description text,
    status text default 'pending', -- one of pending, confirmed or completed
    expected_participants integer,
    "date" date
);

create table workshop_trainers (
    id serial primary key,
    workshop_id integer references workshop,
    trainer_id integer references users,
    status text,
    tstamp timestamp default (current_timestamp at time zone 'UTC'),
    unique (workshop_id, trainer_id)
);

create table comment (
    id serial primary key,
    parent_id integer references comment,
    workshop_id integer references workshop,
    author_id integer references users,
    comment text,
    created timestamp default (current_timestamp at time zone 'UTC')
);

create table activity (
    id serial primary key,
    type text,
    info JSON,
    user_id integer references users,
    user_name text,
    tstamp timestamp default (current_timestamp at time zone 'UTC')
);

create index activity_type_idx on activity(type);
create index activity_tstamp_idx on activity(tstamp);
