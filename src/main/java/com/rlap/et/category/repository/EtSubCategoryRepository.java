package com.rlap.et.category.repository;

import com.rlap.et.category.entity.EtSubCategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.UUID;

@Repository
public interface EtSubCategoryRepository extends JpaRepository<EtSubCategoryEntity, UUID> {
    List<EtSubCategoryEntity> findAllByDeletedIsFalse();
    List<EtSubCategoryEntity> findAllByDeletedIsFalseAndActiveIsTrue();
}
