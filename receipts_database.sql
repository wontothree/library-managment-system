create table INGREDIENT_CLASSES
(
    IngredientClassID          varchar(20) primary key,
    IngredientClassDescription varchar(1024)
);


create table MEASUREMENTS
(
    MeasureAmountID        varchar(20) primary key,
    MeasurementDescription varchar(1024)
);


create table RECIPE_CLASSES
(
    RecipeClassID          varchar(20) primary key,
    RecipeClassDescription varchar(1024)
);



create table INGREDIENTS
(
    IngredientID      varchar(20) primary key,
    IngredientName    varchar(250) not null,
    IngredientClassID varchar(20)  not null,
    MeasureAmountID   varchar(20)  not null,

    foreign key (IngredientClassID) references INGREDIENT_CLASSES (IngredientClassID),
    foreign key (MeasureAmountID) references MEASUREMENTS (MeasureAmountID)
);


create table RECIPES
(
    RecipeID      varchar(20),
    RecipeTitle   varchar(250) not null,
    RecipeClassID varchar(20)  not null,
    Preparation   varchar(1024),
    Notes         varchar(1024),

    foreign key (RecipeClassID) references RECIPE_CLASSES (RecipeClassID)
);



create table RECIPE_INGREDIENTS
(
    RecipeID        varchar(20),
    RecipeSeqNo     integer,
    IngredientID    varchar(20) not null,
    MeasureAmountID varchar(20) not null,
    Amount          decimal,

    primary key (RecipeID, RecipeSeqNo),
    foreign key (IngredientID) references INGREDIENTS (IngredientID),
    foreign key (MeasureAmountID) references INGREDIENTS (MeasureAmountID)
);