CREATE TABLE "category" (
    category_id VARCHAR(20) primary key  NOT NULL,
    category VARCHAR(20)   NOT null
);

CREATE TABLE "subcategory" (
    "subcategory_id" VARCHAR(20)   NOT NULL,
    "subcategory" VARCHAR(20)   NOT NULL,
    PRIMARY KEY ("subcategory_id")
);

CREATE TABLE "contacts" (
    "contact_id" INT   NOT NULL,
    "first_name" VARCHAR(20)   NOT NULL,
    "last_name" VARCHAR(30)   NOT NULL,
    "email" VARCHAR(75)   NOT NULL,
    PRIMARY KEY ("contact_id")
);
    
CREATE TABLE "campaign" (
    cf_id INT   NOT NULL,
    "contact_id" INT   NOT NULL,
    "company_name" VARCHAR(75)   NOT NULL,
    "description" VARCHAR(75)   NOT NULL,
    "goal" FLOAT   NOT NULL,
    "pledged" FLOAT   NOT NULL,
    "outcome" VARCHAR(20)   NOT NULL,
    "backers_count" INT   NOT NULL,
    "country" VARCHAR(10)   NOT NULL,
    "currency" VARCHAR(10)   NOT NULL,
    "launch_date" TIMESTAMP   NOT NULL,
    "end_date" TIMESTAMP   NOT NULL,
    "category_id" VARCHAR(20)   NOT NULL,
    "subcategory_id" VARCHAR(20)   NOT null,
    PRIMARY KEY (cf_id),
    FOREIGN key (contact_id) references contacts(contact_id),
    FOREIGN key (category_id) references category(category_id),
    FOREIGN key (subcategory_id) references subcategory(subcategory_id)
    
);

select *
from campaign c 
;