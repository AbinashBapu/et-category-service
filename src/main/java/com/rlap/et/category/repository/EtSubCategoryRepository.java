package com.rlap.et.category.repository;

import com.rlap.et.category.entity.EtCategoryEntity;
import com.rlap.et.category.entity.EtSubCategoryEntity;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import java.util.List;
import java.util.Optional;
import java.util.UUID;

@Repository
public interface EtSubCategoryRepository extends JpaRepository<EtSubCategoryEntity, UUID> {
    List<EtSubCategoryEntity> findAllByDeletedIsFalse();
    List<EtSubCategoryEntity> findAllByDeletedIsFalseAndActiveIsTrue();


    @Query("SELECT et FROM EtSubCategoryEntity et WHERE et.pkSubCategoryId = :subCategoryId AND et.deleted = false AND et.active = true")
    Optional<EtCategoryEntity> findCategoryByIdAndActiveIsTrueAndDeletedFalse(@Param("subCategoryId") UUID subCategoryId, @Param("categoryId") UUID categoryId);


    @Query("SELECT sc FROM EtSubCategoryEntity sc  JOIN FETCH sc.categoryEntity c  WHERE sc.pkSubCategoryId = :subCategoryId " +
            "AND c.pkCategoryId = :categoryId  AND sc.active = true AND sc.deleted = false  AND c.active = true AND c.deleted = false")
    EtSubCategoryEntity findSubCategoryWithCategoryIfActiveAndNotDeleted(@Param("subCategoryId") UUID subCategoryId, @Param("categoryId") UUID categoryId);



    @Query("SELECT sc FROM EtSubCategoryEntity sc  WHERE sc.categoryEntity.pkCategoryId = :categoryId  " +
            " AND sc.active = true AND sc.deleted = false")
    List<EtSubCategoryEntity> findAllSubCategoryByCategoryId( @Param("categoryId") UUID categoryId);

}
