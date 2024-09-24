CREATE TABLE "Contacts" (
    "contact_id" INT NOT NULL,
    "first_name" VARCHAR(50) NOT NULL,
    "last_name" VARCHAR(50) NOT NULL,
    "email" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_Contacts" PRIMARY KEY ("contact_id")
);

CREATE TABLE "category" (
    "category_id" VARCHAR(50) NOT NULL,
    "category" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_category" PRIMARY KEY ("category_id")
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(50) NOT NULL,
    "sub-category" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_subcategory" PRIMARY KEY ("subcategory_id")
);

CREATE TABLE "Campaign" (
    "cf_id" INT NOT NULL,
    "contact_id" INT NOT NULL,
    "company" VARCHAR(50) NOT NULL,
    "description" VARCHAR(255) NOT NULL,
    "goal" FLOAT NOT NULL,
    "pledged" FLOAT NOT NULL,
    "outcome" VARCHAR(50) NOT NULL,
    "backers_count" INT NOT NULL,
    "country" VARCHAR(50) NOT NULL,
    "currency" VARCHAR(50) NOT NULL,
    "launched_date" DATE NOT NULL,
    "end_date" DATE NOT NULL,
    "category_id" VARCHAR(50) NOT NULL,
    "subcategory_id" VARCHAR(50) NOT NULL,
    CONSTRAINT "pk_Campaign" PRIMARY KEY ("cf_id"),
    CONSTRAINT "fk_Campaign_Contacts" FOREIGN KEY ("contact_id") REFERENCES "Contacts" ("contact_id"),
    CONSTRAINT "fk_Campaign_category" FOREIGN KEY ("category_id") REFERENCES "category" ("category_id"),
    CONSTRAINT "fk_Campaign_subcategory" FOREIGN KEY ("subcategory_id") REFERENCES "subcategory" ("subcategory_id")
);