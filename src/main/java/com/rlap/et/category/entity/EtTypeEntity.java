package com.rlap.et.category.entity;

import com.rlap.et.common.core.EtBaseEntity;
import jakarta.persistence.*;

import java.util.UUID;

@Entity
@Table(name = "type")
public class EtTypeEntity extends EtBaseEntity{

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "pk_type_id", nullable = false, unique = true)
    private UUID typeId;

    @Column(name = "type_name", nullable = false, unique = true, length = 50)
    private String typeName;

    @Column(name = "type_description", nullable = false, unique = true, length = 50)
    private String typeDescription;


    public UUID getTypeId() {
        return typeId;
    }

    public void setTypeId(UUID typeId) {
        this.typeId = typeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public String getTypeDescription() {
        return typeDescription;
    }

    public void setTypeDescription(String typeDescription) {
        this.typeDescription = typeDescription;
    }
}