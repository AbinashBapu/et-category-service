package com.rlap.et.category.web.controllers;

import com.rlap.et.category.service.CategoryService;
import com.rlap.et.common.core.Response;
import com.rlap.et.common.dto.CategoryInfo;
import com.rlap.et.common.dto.CategoryRequest;
import com.rlap.et.common.dto.LabelDesc;
import com.rlap.et.common.dto.SubCategoryInfo;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.UUID;

@RestController
@RequestMapping("${api.version.v1}/classification/category")
public class CategoryController {
    private final CategoryService categoryService;

    @Autowired
    public CategoryController(CategoryService categoryService) {
        this.categoryService = categoryService;
    }


    @GetMapping
    public Response<List<CategoryInfo>> getAllCategories() {
        List<CategoryInfo> allCategories = categoryService.getAllCategories();
        return new Response<>(200, "Category fetched successfully", allCategories, "Success");
    }

    @GetMapping("/{id}")
    public Response<CategoryInfo> getCategoryInfoById(@PathVariable UUID id) {
        CategoryInfo category = categoryService.getCategoryInfoById(id);
        return new Response<>(200, "Category fetched successfully", category, "Success");
    }

    @PostMapping
    public Response<Void> createCategory(@RequestBody CategoryRequest request,@RequestHeader("X-User-Id") UUID userId) {
        categoryService.createCategory(request,userId);
        return new Response<>(201, "Category created successfully", null, "Success");
    }

    @PutMapping("/{id}")
    public Response<Void> updateCategory(@PathVariable UUID id, @RequestBody CategoryRequest request,@RequestHeader("X-User-Id") UUID userId) {
        categoryService.updateCategory(id, request,userId);
        return new Response<>(200, "Category updated successfully", null, "Success");
    }

    @DeleteMapping("/{id}")
    public Response<Void> deleteCategory(@PathVariable UUID id) {
        categoryService.deleteCategory(id);
        return new Response<>(200, "Category deleted successfully", null, "Success");
    }

    // Type Endpoints

    @GetMapping("/{categoryId}/subCategory/{subCategoryId}")
    public Response<SubCategoryInfo> getSubCategoryInfoByCategoryAndSubCategoryId(@PathVariable UUID categoryId, @PathVariable UUID subCategoryId) {
        SubCategoryInfo subCategoryInfo = categoryService.getSubCategoryInfoByCategoryAndSubCategoryId(categoryId, subCategoryId);
        return new Response<>(200, "Sub category fetched successfully", subCategoryInfo, "Success");
    }


}
