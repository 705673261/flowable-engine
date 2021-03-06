create table ACT_HI_ENTITYLINK (
    ID_ NVARCHAR2(64),
    LINK_TYPE_ NVARCHAR2(255),
    CREATE_TIME_ TIMESTAMP(6),
    SCOPE_ID_ NVARCHAR2(255),
    SUB_SCOPE_ID_ NVARCHAR2(255),
    SCOPE_TYPE_ NVARCHAR2(255),
    SCOPE_DEFINITION_ID_ NVARCHAR2(255),
    PARENT_ELEMENT_ID_ NVARCHAR2(255),
    REF_SCOPE_ID_ NVARCHAR2(255),
    REF_SCOPE_TYPE_ NVARCHAR2(255),
    REF_SCOPE_DEFINITION_ID_ NVARCHAR2(255),
    ROOT_SCOPE_ID_ NVARCHAR2(255),
    ROOT_SCOPE_TYPE_ NVARCHAR2(255),
    HIERARCHY_TYPE_ NVARCHAR2(255),
    primary key (ID_)
);

create index ACT_IDX_HI_ENT_LNK_SCOPE on ACT_HI_ENTITYLINK(SCOPE_ID_, SCOPE_TYPE_, LINK_TYPE_);
create index ACT_IDX_HI_ENT_LNK_ROOT_SCOPE on ACT_HI_ENTITYLINK(ROOT_SCOPE_ID_, ROOT_SCOPE_TYPE_, LINK_TYPE_);
create index ACT_IDX_HI_ENT_LNK_SCOPE_DEF on ACT_HI_ENTITYLINK(SCOPE_DEFINITION_ID_, SCOPE_TYPE_, LINK_TYPE_);
