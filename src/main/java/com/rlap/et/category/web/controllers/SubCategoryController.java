package com.rlap.et.category.web.controllers;

import com.rlap.et.category.service.CategoryService;
import com.rlap.et.common.core.Response;
import com.rlap.et.common.dto.SubCategoryInfo;
import com.rlap.et.common.dto.TypeCategorySubCategoryRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;


@RestController
@RequestMapping("${api.version.v1}/subcategories")
public class SubCategoryController {


    private final CategoryService categoryService;


    @Autowired
    public SubCategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }


    @GetMapping
    public Response<List<SubCategoryInfo>> getAllSubCategories() {
        List<SubCategoryInfo> subCategories = categoryService.getAllSubCategories();
        return new Response<>(200, "Subcategories fetched successfully", subCategories, "Success");
    }

    @GetMapping("/{id}")
    public Response<SubCategoryInfo> getSubCategoryInfoById(@PathVariable UUID id) {
        SubCategoryInfo subCategory = categoryService.getSubCategoryInfoById(id);
        return new Response<>(200, "Subcategory fetched successfully", subCategory, "Success");

    }

    @PostMapping
    public Response<Void> createSubCategory(@RequestBody TypeCategorySubCategoryRequest request) {
        categoryService.createSubCategory(request);
        return new Response<>(201, "Subcategory created successfully", null, "Success");
    }

    @PutMapping("/{id}")
    public Response<Void> updateSubCategory(@PathVariable UUID id, @RequestBody TypeCategorySubCategoryRequest request) {
        categoryService.updateSubCategory(id, request);
        return new Response<>(200, "Subcategory updated successfully", null, "Success");
    }

    @DeleteMapping("/{id}")
    public Response<Void> deleteSubCategory(@PathVariable UUID id) {
        categoryService.deleteSubCategory(id);
        return new Response<>(200, "Subcategory deleted successfully", null, "Success");
    }

}
