package com.rlap.et.category.entity;


import com.rlap.et.common.core.EtBaseEntity;
import jakarta.persistence.*;

import java.util.List;
import java.util.UUID;

@Entity
@Table(name = "category")
public class EtCategoryEntity extends EtBaseEntity {

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Column(name = "pk_category_id")
    private UUID pkCategoryId;

    @ManyToOne
    @JoinColumn(name = "fk_type_id", nullable = false)
    private EtTypeEntity type;

    @Column(name = "label", nullable = false, length = 255)
    private String label;

    @Column(name = "description", columnDefinition = "TEXT")
    private String description;

    @OneToMany(mappedBy = "categoryEntity", cascade = CascadeType.ALL)
    private List<EtSubCategoryEntity> subCategories;



    public UUID getPkCategoryId() {
        return pkCategoryId;
    }

    public void setPkCategoryId(UUID pkCategoryId) {
        this.pkCategoryId = pkCategoryId;
    }

    public EtTypeEntity getType() {
        return type;
    }

    public void setType(EtTypeEntity type) {
        this.type = type;
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

    public List<EtSubCategoryEntity> getSubCategories() {
        return subCategories;
    }

    public void setSubCategories(List<EtSubCategoryEntity> subCategories) {
        this.subCategories = subCategories;
    }
}
