
--liquibase formatted sql

-- changeset abinash:1737260362077_insert_type

INSERT INTO "type"  (
    pk_type_id, type_name, type_description, active, deleted, created_at, updated_at, created_by, updated_by
)
VALUES
    ('0a9350a3-25d2-4f48-8744-5e25b064a300',    'Income',   'All kind of incoming money will be add under this type',   true,   false,  '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('5f870838-a8fa-4e8d-8674-26e1e2a831c4',    'Expense',  'All kind of Expenses will be add under this type',         true,   false,  '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('49683ba8-2424-4adf-b38c-c104ff7f2034',    'Savings',  'All kind of saving will be add under this type',           true,   false,  '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154')
         ;

-- changeset abinash:1737260362077_insert_category

INSERT INTO
    category(pk_category_id,fk_type_id,label,description,active, deleted, created_at, updated_at, created_by, updated_by)
VALUES
    -- Expenses
    ('044cb5f9-cd58-4989-8613-39542c1ce0f0','5f870838-a8fa-4e8d-8674-26e1e2a831c4',     'Housing',                          'Rent/mortgage, property taxes, home insurance, maintenance, HOA fees.',            true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('13a7722e-6c94-4c39-a9d3-e26fa41e1f1a','5f870838-a8fa-4e8d-8674-26e1e2a831c4',     'Transportation',                   'Fuel, car payments, insurance, repairs, public transit, tolls, parking.',          true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('75d7ba00-d54b-419e-bdc0-2c6cc5b92bc7','5f870838-a8fa-4e8d-8674-26e1e2a831c4',     'Food',                             'Groceries, restaurant bills, snacks, beverages, meal kits, food delivery.',        true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('b0d0c608-fce5-44de-96bc-7b4bafa78696','5f870838-a8fa-4e8d-8674-26e1e2a831c4',     'Health & Wellness',                'Insurance, medical/dental bills, prescriptions, gym memberships, therapy.',        true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('ae21bbb0-c34e-454d-b69a-2374339cdf1c','5f870838-a8fa-4e8d-8674-26e1e2a831c4',     'Entertainment & Recreation',       'Subscriptions (Netflix, Spotify), books, gaming, vacations, events.',               true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('376570f6-3287-4915-b587-1979fe65fd3c','5f870838-a8fa-4e8d-8674-26e1e2a831c4',     'Personal Care',                    'Haircuts, skincare products, grooming tools, toiletries, cosmetics.',              true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('e0249b59-63de-42ed-a555-7aeb1fa1d6b3','5f870838-a8fa-4e8d-8674-26e1e2a831c4',     'Financial Obligations',            'Loan repayments, credit card payments, alimony, child support.',                   true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('007ea80d-f905-4d60-ab03-c76360db7c72','5f870838-a8fa-4e8d-8674-26e1e2a831c4',     'Education',                        'Tuition fees, learning materials, online courses, school supplies.',               true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('eba0a99c-4138-424d-afd1-34489755d673','5f870838-a8fa-4e8d-8674-26e1e2a831c4',     'Gifts & Donations',                'Presents for occasions, charitable contributions, religious offerings.',           true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('4da57832-160f-4101-a5cc-228b082c41b9','5f870838-a8fa-4e8d-8674-26e1e2a831c4',     'Family & Children',                'Childcare, education expenses, family outings, allowances.',                       true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('80d3b26c-0fb2-429f-b30d-3567dc042ee7','5f870838-a8fa-4e8d-8674-26e1e2a831c4',     'Miscellaneous',                    'Unplanned purchases, emergency repairs, one-time expenses.',                       true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('3ab9c509-e152-42aa-a882-0634d9cc56f1','5f870838-a8fa-4e8d-8674-26e1e2a831c4',     'Utilities',                        'Electricity, gas, water, sewer, internet, phone bills, trash collection.',         true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),

    -- Incomes
    ('ec47e698-e6f8-4a4e-bd21-904fb825fc6f','0a9350a3-25d2-4f48-8744-5e25b064a300',     'Incomes',                          'Salary, bonuses, side hustle earnings, dividends, pensions, government aid.',      true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),

    -- Savings
    ('7c21a82a-ba96-4991-badf-30f091054449','49683ba8-2424-4adf-b38c-c104ff7f2034',     'Savings & Investments',            'Emergency funds, retirement accounts, stocks, real estate investments.',           true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154');




-- changeset abinash:1737260362077_insert_sub_category

INSERT INTO
    sub_category(pk_sub_category_id,fk_category_id,label,active, deleted, created_at, updated_at, created_by, updated_by)
VALUES
    -- HOUSING
    ('5b445f62-7fa9-41cf-8254-bb3502d9fb69',        '044cb5f9-cd58-4989-8613-39542c1ce0f0',         'Rent/Mortgage',                true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'  ),
    ('346ee874-d284-423c-944d-722c96278c83',        '044cb5f9-cd58-4989-8613-39542c1ce0f0',         'Utilities',                    true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'  ),
    ('63f988bc-839a-417a-8dc1-3e372f437f32',        '044cb5f9-cd58-4989-8613-39542c1ce0f0',         'Property Taxes',               true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'  ),
    ('2b085620-78fc-4db8-afc0-a93c340c252d',        '044cb5f9-cd58-4989-8613-39542c1ce0f0',         'Home Insurance',               true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'  ),
    ('cd2cc56e-c417-40c3-9e19-6df00fc14350',        '044cb5f9-cd58-4989-8613-39542c1ce0f0',         'Maintenance & Repairs',        true,       false,     '2025-01-19 10:00:00+00',   '2025-01-19 10:00:00+00',   'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154',     'f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'  ),

    -- TRANSPORTATION
    ('416e6ef7-5791-4834-9f51-c40ce3a2e365',        '13a7722e-6c94-4c39-a9d3-e26fa41e1f1a',         'Fuel',                         true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('8c36f021-ebe2-4169-8813-3f69354a2998',        '13a7722e-6c94-4c39-a9d3-e26fa41e1f1a',         'Car Payments',                 true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('a8668270-abf5-440d-adbb-3bf34201c6e8',        '13a7722e-6c94-4c39-a9d3-e26fa41e1f1a',         'Public Transport',             true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('9b9e3bab-8349-485e-9e7a-0cebbd921382',        '13a7722e-6c94-4c39-a9d3-e26fa41e1f1a',         'Vehicle Insurance',            true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('cdb12de1-4700-4e50-9b0c-ba07e60038be',        '13a7722e-6c94-4c39-a9d3-e26fa41e1f1a',         'Vehicle Maintenance',          true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('a45066ac-7604-433c-a982-940b050356f7',        '13a7722e-6c94-4c39-a9d3-e26fa41e1f1a',         'Parking & Tolls',              true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),

    -- FOOD
    ('da270789-aa66-4979-836f-1d8706cd7512',        '75d7ba00-d54b-419e-bdc0-2c6cc5b92bc7',         'Groceries',                    true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('7ea07ea2-74e0-4289-99d1-246432a92f59',        '75d7ba00-d54b-419e-bdc0-2c6cc5b92bc7',         'Dining Out',                   true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('f39b4848-b860-4b6d-8182-0e5994a51e4b',        '75d7ba00-d54b-419e-bdc0-2c6cc5b92bc7',         'Coffee & Snacks',              true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('d168c0a8-71a1-4dde-851b-fb8e180e3e57',        '75d7ba00-d54b-419e-bdc0-2c6cc5b92bc7',         'Meal Delivery Services',       true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('a9e99e4d-1492-43cf-9f01-11392281b7ab',        '75d7ba00-d54b-419e-bdc0-2c6cc5b92bc7',         'Groceries',                    true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('e576bdc6-3214-425d-b74a-879a9e511ee0',        '75d7ba00-d54b-419e-bdc0-2c6cc5b92bc7',         'Breakfast',                    true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),

    -- Health & Wellness
    ('92bf96af-8e7f-4dde-b385-afd8b4237f60',        'b0d0c608-fce5-44de-96bc-7b4bafa78696',         'Health Insurance',             true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('3e27b79f-c999-4bfe-a70f-be222870926f',        'b0d0c608-fce5-44de-96bc-7b4bafa78696',         'Medical Bills',                true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('6beac295-dcea-4b99-bd1b-e0e50fefa179',        'b0d0c608-fce5-44de-96bc-7b4bafa78696',         'Medications',                  true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('a6171beb-f50f-4bed-8c3a-e23aac2290c6',        'b0d0c608-fce5-44de-96bc-7b4bafa78696',         'Fitness',                      true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('8be73a54-9b0a-4312-b8c2-51171df94197',        'b0d0c608-fce5-44de-96bc-7b4bafa78696',         'Therapy/Counseling',           true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),

    -- Entertainment & Recreation
    ('ee2080ff-0db0-43e8-9ed4-e41de61eeb2b',        'ae21bbb0-c34e-454d-b69a-2374339cdf1c',         'Subscriptions',                true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('952f25c4-ab0e-4dfe-88a0-72574925f2d5',        'ae21bbb0-c34e-454d-b69a-2374339cdf1c',         'Movies & Events',              true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('a6c4fd13-c0a3-4f01-8f52-484533d93fc4',        'ae21bbb0-c34e-454d-b69a-2374339cdf1c',         'Sports & Hobbies',             true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('d16a15b1-f7ab-4aeb-afd1-678d6dc4dabd',        'ae21bbb0-c34e-454d-b69a-2374339cdf1c',         'Vacations/Travel',             true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),

    -- Personal Care
    ('15ce49fc-6133-42f8-b269-e4b510d5df55',        '376570f6-3287-4915-b587-1979fe65fd3c',         'Haircuts & Grooming',          true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('94747f6e-1950-4114-b586-4e895ebd0cc5',        '376570f6-3287-4915-b587-1979fe65fd3c',         'Skincare & Beauty Products',   true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('aa74102b-39f2-4df4-b9ee-cfd89e7d5a61',        '376570f6-3287-4915-b587-1979fe65fd3c',         'Clothing & Accessories',       true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),


    -- Financial Obligations
    ('61f2f6fc-33d5-4323-bd66-0859d0502ee0',        'e0249b59-63de-42ed-a555-7aeb1fa1d6b3',         'Debt Repayment',               true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('c98edc67-65e5-4a76-bef5-dfa6ec1ee4dc',        'e0249b59-63de-42ed-a555-7aeb1fa1d6b3',         'Taxes',                        true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('629518bf-ab00-4277-a5a2-e586077c44b2',        'e0249b59-63de-42ed-a555-7aeb1fa1d6b3',         'CC Bill Payment',              true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),

    -- Education
    ('89cb8a88-db64-4ea7-992c-77edfb3c5320',        '007ea80d-f905-4d60-ab03-c76360db7c72',         'Tuition Fees',                 true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('17bc529a-646e-4c9c-898f-656ef798a9c7',        '007ea80d-f905-4d60-ab03-c76360db7c72',         'Books & Supplies',             true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('90f62e0f-c5da-4a64-8808-15f17180c685',        '007ea80d-f905-4d60-ab03-c76360db7c72',         'Online Courses',               true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('762a35e0-9418-4386-a4c1-37bc14a0fb4e',        '007ea80d-f905-4d60-ab03-c76360db7c72',         'School Fees',                  true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),

    -- Gifts & Donations
    ('84b299e8-bc06-4cca-989a-4ba305f559b9',        'eba0a99c-4138-424d-afd1-34489755d673',         'Charitable Contributions',     true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('8dc68c96-e973-478c-8a3f-f08bf8d90129',        'eba0a99c-4138-424d-afd1-34489755d673',         'Gifts for Family & Friends',   true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),

    -- Family & Children
    ('9e65bf16-5d23-4dfb-92c0-1f646bab5177',        '4da57832-160f-4101-a5cc-228b082c41b9',         'Childcare',                    true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('49102b67-4117-423f-b543-e955c987e888',        '4da57832-160f-4101-a5cc-228b082c41b9',         'Education',                    true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('a4da529c-73c4-4bbf-998f-34edca17b43d',        '4da57832-160f-4101-a5cc-228b082c41b9',         'Baby Essentials',              true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),

    -- Miscellaneous
    ('ab8938a3-fe52-4310-9978-5f5abaf5de92',        '80d3b26c-0fb2-429f-b30d-3567dc042ee7',         'Pet Care',                     true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('efe889c5-cd6f-49dc-b3fa-b9777ba17729',        '80d3b26c-0fb2-429f-b30d-3567dc042ee7',         'Household Supplies',           true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),


    -- Utilities
    ('fd608311-6d4a-4fe3-8d66-c8a39f153744',        '3ab9c509-e152-42aa-a882-0634d9cc56f1',         'Mobile Recharge',              true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),

    -- Income
    ('52f9bbc3-9f7f-4ab7-a427-3485c40d9084',        'ec47e698-e6f8-4a4e-bd21-904fb825fc6f',         'Salary',                       true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('b257ada0-8d97-4173-ad55-8d3228cabd64',        'ec47e698-e6f8-4a4e-bd21-904fb825fc6f',         'Freelancing',                  true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('50eb45de-d4ae-423a-83ba-e23836e39201',        'ec47e698-e6f8-4a4e-bd21-904fb825fc6f',         'Gifts',                        true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('92b46d7f-eafa-4c5d-9297-e1acdc33147c',        'ec47e698-e6f8-4a4e-bd21-904fb825fc6f',         'Bank Interest',                true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('35d82e44-13f3-42f7-9778-b204ce7fb3e4',        'ec47e698-e6f8-4a4e-bd21-904fb825fc6f',         'Refunds',                      true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),

    -- Savings & Investments
    ('296c76ae-cf39-4346-bf9f-dfc9fa0b5578',        '7c21a82a-ba96-4991-badf-30f091054449',         'Life Insurance (LIC)',         true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('ff007c3b-a4af-404a-b974-f89db88208cb',        '7c21a82a-ba96-4991-badf-30f091054449',         'Mutual Funds',                 true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('5ba61052-ba4f-4898-83a9-45d59f7ecbfa',        '7c21a82a-ba96-4991-badf-30f091054449',         'Public Provident Fund (PPF)',  true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('08330823-315d-49d6-88e1-82b77e863a2c',        '7c21a82a-ba96-4991-badf-30f091054449',         'National Pension Scheme (NPS)',true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('e9afcd09-5f27-4f22-9da2-2b0c87ed00aa',        '7c21a82a-ba96-4991-badf-30f091054449',         'Recurring Deposit (RD)',       true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154'),
    ('d6cf3250-2580-437d-bfca-d3dc17d545d2',        '7c21a82a-ba96-4991-badf-30f091054449',         'Fixed Deposit (FD)',           true,       false,      '2025-01-19 10:00:00+00', '2025-01-19 10:00:00+00','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154','f66c2ffc-a7d8-4cd3-ad62-7ab6da923154')
    ;
