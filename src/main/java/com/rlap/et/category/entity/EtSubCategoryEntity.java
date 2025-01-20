package com.rlap.et.category.entity;

import com.rlap.et.common.core.EtBaseEntity;
import jakarta.persistence.*;

import java.util.UUID;

@Entity
@Table(name = "sub_category")
public class EtSubCategoryEntity extends EtBaseEntity {
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "pk_sub_category_id")
    private UUID pkSubCategoryId;

    @Column(name = "label", nullable = false, length = 255)
    private String label;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;


    @ManyToOne
    @JoinColumn(name = "fk_category_id", nullable = false)
    private EtCategoryEntity categoryEntity;


    public UUID getPkSubCategoryId() {
        return pkSubCategoryId;
    }

    public void setPkSubCategoryId(UUID pkSubCategoryId) {
        this.pkSubCategoryId = pkSubCategoryId;
    }

    public String getLabel() {
        return label;
    }

    public void setLabel(String label) {
        this.label = label;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public EtCategoryEntity getCategoryEntity() {
        return categoryEntity;
    }
    public void setCategoryEntity(EtCategoryEntity categoryEntity) {
        this.categoryEntity = categoryEntity;
    }
}
