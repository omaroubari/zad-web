--
-- PostgreSQL database dump
--

-- Dumped from database version 16.10 (Ubuntu 16.10-0ubuntu0.24.04.1)
-- Dumped by pg_dump version 17.5 (Debian 17.5-1.pgdg120+1)

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET transaction_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

ALTER TABLE IF EXISTS ONLY "public"."users_sessions" DROP CONSTRAINT IF EXISTS "users_sessions_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."search_rels" DROP CONSTRAINT IF EXISTS "search_rels_posts_fk";
ALTER TABLE IF EXISTS ONLY "public"."search_rels" DROP CONSTRAINT IF EXISTS "search_rels_parent_fk";
ALTER TABLE IF EXISTS ONLY "public"."search" DROP CONSTRAINT IF EXISTS "search_meta_image_id_media_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."search_locales" DROP CONSTRAINT IF EXISTS "search_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."search_categories" DROP CONSTRAINT IF EXISTS "search_categories_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."redirects_rels" DROP CONSTRAINT IF EXISTS "redirects_rels_posts_fk";
ALTER TABLE IF EXISTS ONLY "public"."redirects_rels" DROP CONSTRAINT IF EXISTS "redirects_rels_parent_fk";
ALTER TABLE IF EXISTS ONLY "public"."redirects_rels" DROP CONSTRAINT IF EXISTS "redirects_rels_pages_fk";
ALTER TABLE IF EXISTS ONLY "public"."posts_rels" DROP CONSTRAINT IF EXISTS "posts_rels_users_fk";
ALTER TABLE IF EXISTS ONLY "public"."posts_rels" DROP CONSTRAINT IF EXISTS "posts_rels_posts_fk";
ALTER TABLE IF EXISTS ONLY "public"."posts_rels" DROP CONSTRAINT IF EXISTS "posts_rels_parent_fk";
ALTER TABLE IF EXISTS ONLY "public"."posts_rels" DROP CONSTRAINT IF EXISTS "posts_rels_categories_fk";
ALTER TABLE IF EXISTS ONLY "public"."posts_populated_authors" DROP CONSTRAINT IF EXISTS "posts_populated_authors_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."posts_locales" DROP CONSTRAINT IF EXISTS "posts_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."posts_locales" DROP CONSTRAINT IF EXISTS "posts_locales_meta_image_id_media_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."posts" DROP CONSTRAINT IF EXISTS "posts_hero_image_id_media_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_preferences_rels" DROP CONSTRAINT IF EXISTS "payload_preferences_rels_users_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_preferences_rels" DROP CONSTRAINT IF EXISTS "payload_preferences_rels_parent_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_locked_documents_rels" DROP CONSTRAINT IF EXISTS "payload_locked_documents_rels_users_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_locked_documents_rels" DROP CONSTRAINT IF EXISTS "payload_locked_documents_rels_search_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_locked_documents_rels" DROP CONSTRAINT IF EXISTS "payload_locked_documents_rels_redirects_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_locked_documents_rels" DROP CONSTRAINT IF EXISTS "payload_locked_documents_rels_posts_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_locked_documents_rels" DROP CONSTRAINT IF EXISTS "payload_locked_documents_rels_payload_jobs_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_locked_documents_rels" DROP CONSTRAINT IF EXISTS "payload_locked_documents_rels_parent_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_locked_documents_rels" DROP CONSTRAINT IF EXISTS "payload_locked_documents_rels_pages_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_locked_documents_rels" DROP CONSTRAINT IF EXISTS "payload_locked_documents_rels_media_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_locked_documents_rels" DROP CONSTRAINT IF EXISTS "payload_locked_documents_rels_forms_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_locked_documents_rels" DROP CONSTRAINT IF EXISTS "payload_locked_documents_rels_form_submissions_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_locked_documents_rels" DROP CONSTRAINT IF EXISTS "payload_locked_documents_rels_faq_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_locked_documents_rels" DROP CONSTRAINT IF EXISTS "payload_locked_documents_rels_categories_fk";
ALTER TABLE IF EXISTS ONLY "public"."payload_jobs_log" DROP CONSTRAINT IF EXISTS "payload_jobs_log_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_rels" DROP CONSTRAINT IF EXISTS "pages_rels_posts_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_rels" DROP CONSTRAINT IF EXISTS "pages_rels_parent_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_rels" DROP CONSTRAINT IF EXISTS "pages_rels_pages_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_rels" DROP CONSTRAINT IF EXISTS "pages_rels_media_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_rels" DROP CONSTRAINT IF EXISTS "pages_rels_faq_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_rels" DROP CONSTRAINT IF EXISTS "pages_rels_categories_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_locales" DROP CONSTRAINT IF EXISTS "pages_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_locales" DROP CONSTRAINT IF EXISTS "pages_locales_meta_image_id_media_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_locales" DROP CONSTRAINT IF EXISTS "pages_locales_hero_media_id_media_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_hero_links" DROP CONSTRAINT IF EXISTS "pages_hero_links_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_hero_links_locales" DROP CONSTRAINT IF EXISTS "pages_hero_links_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_stats_block" DROP CONSTRAINT IF EXISTS "pages_blocks_stats_block_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_stats_block_list" DROP CONSTRAINT IF EXISTS "pages_blocks_stats_block_list_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_pricing_block" DROP CONSTRAINT IF EXISTS "pages_blocks_pricing_block_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_pricing_block_base_features_features" DROP CONSTRAINT IF EXISTS "pages_blocks_pricing_block_base_features_features_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_pricing_block_additional_features_features" DROP CONSTRAINT IF EXISTS "pages_blocks_pricing_block_additional_features_features_parent_";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_media_block" DROP CONSTRAINT IF EXISTS "pages_blocks_media_block_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_media_block" DROP CONSTRAINT IF EXISTS "pages_blocks_media_block_media_id_media_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_logo_block" DROP CONSTRAINT IF EXISTS "pages_blocks_logo_block_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_form_block" DROP CONSTRAINT IF EXISTS "pages_blocks_form_block_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_form_block" DROP CONSTRAINT IF EXISTS "pages_blocks_form_block_form_id_forms_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_faq_block" DROP CONSTRAINT IF EXISTS "pages_blocks_faq_block_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_faq_block_links" DROP CONSTRAINT IF EXISTS "pages_blocks_faq_block_links_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_faq_block_links_locales" DROP CONSTRAINT IF EXISTS "pages_blocks_faq_block_links_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_cta" DROP CONSTRAINT IF EXISTS "pages_blocks_cta_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_cta_links" DROP CONSTRAINT IF EXISTS "pages_blocks_cta_links_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_cta_links_locales" DROP CONSTRAINT IF EXISTS "pages_blocks_cta_links_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_content" DROP CONSTRAINT IF EXISTS "pages_blocks_content_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_content_list" DROP CONSTRAINT IF EXISTS "pages_blocks_content_list_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_content_list" DROP CONSTRAINT IF EXISTS "pages_blocks_content_list_media_id_media_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_content_list_locales" DROP CONSTRAINT IF EXISTS "pages_blocks_content_list_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_archive" DROP CONSTRAINT IF EXISTS "pages_blocks_archive_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."header_rels" DROP CONSTRAINT IF EXISTS "header_rels_posts_fk";
ALTER TABLE IF EXISTS ONLY "public"."header_rels" DROP CONSTRAINT IF EXISTS "header_rels_parent_fk";
ALTER TABLE IF EXISTS ONLY "public"."header_rels" DROP CONSTRAINT IF EXISTS "header_rels_pages_fk";
ALTER TABLE IF EXISTS ONLY "public"."header_nav_items" DROP CONSTRAINT IF EXISTS "header_nav_items_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."header_nav_items_locales" DROP CONSTRAINT IF EXISTS "header_nav_items_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_locales" DROP CONSTRAINT IF EXISTS "forms_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_emails" DROP CONSTRAINT IF EXISTS "forms_emails_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_emails_locales" DROP CONSTRAINT IF EXISTS "forms_emails_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_textarea" DROP CONSTRAINT IF EXISTS "forms_blocks_textarea_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_textarea_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_textarea_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_text" DROP CONSTRAINT IF EXISTS "forms_blocks_text_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_text_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_text_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_state" DROP CONSTRAINT IF EXISTS "forms_blocks_state_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_state_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_state_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_select" DROP CONSTRAINT IF EXISTS "forms_blocks_select_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_select_options" DROP CONSTRAINT IF EXISTS "forms_blocks_select_options_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_select_options_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_select_options_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_select_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_select_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_number" DROP CONSTRAINT IF EXISTS "forms_blocks_number_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_number_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_number_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_message" DROP CONSTRAINT IF EXISTS "forms_blocks_message_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_message_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_message_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_email" DROP CONSTRAINT IF EXISTS "forms_blocks_email_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_email_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_email_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_country" DROP CONSTRAINT IF EXISTS "forms_blocks_country_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_country_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_country_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_checkbox" DROP CONSTRAINT IF EXISTS "forms_blocks_checkbox_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_checkbox_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_checkbox_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."form_submissions_submission_data" DROP CONSTRAINT IF EXISTS "form_submissions_submission_data_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."form_submissions" DROP CONSTRAINT IF EXISTS "form_submissions_form_id_forms_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."footer_rels" DROP CONSTRAINT IF EXISTS "footer_rels_posts_fk";
ALTER TABLE IF EXISTS ONLY "public"."footer_rels" DROP CONSTRAINT IF EXISTS "footer_rels_parent_fk";
ALTER TABLE IF EXISTS ONLY "public"."footer_rels" DROP CONSTRAINT IF EXISTS "footer_rels_pages_fk";
ALTER TABLE IF EXISTS ONLY "public"."footer_nav_items" DROP CONSTRAINT IF EXISTS "footer_nav_items_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."footer_nav_items_locales" DROP CONSTRAINT IF EXISTS "footer_nav_items_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."faq_locales" DROP CONSTRAINT IF EXISTS "faq_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."categories" DROP CONSTRAINT IF EXISTS "categories_parent_id_categories_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."categories_breadcrumbs" DROP CONSTRAINT IF EXISTS "categories_breadcrumbs_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."categories_breadcrumbs" DROP CONSTRAINT IF EXISTS "categories_breadcrumbs_doc_id_categories_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_posts_v_version_populated_authors" DROP CONSTRAINT IF EXISTS "_posts_v_version_populated_authors_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_posts_v" DROP CONSTRAINT IF EXISTS "_posts_v_version_hero_image_id_media_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_posts_v_rels" DROP CONSTRAINT IF EXISTS "_posts_v_rels_users_fk";
ALTER TABLE IF EXISTS ONLY "public"."_posts_v_rels" DROP CONSTRAINT IF EXISTS "_posts_v_rels_posts_fk";
ALTER TABLE IF EXISTS ONLY "public"."_posts_v_rels" DROP CONSTRAINT IF EXISTS "_posts_v_rels_parent_fk";
ALTER TABLE IF EXISTS ONLY "public"."_posts_v_rels" DROP CONSTRAINT IF EXISTS "_posts_v_rels_categories_fk";
ALTER TABLE IF EXISTS ONLY "public"."_posts_v" DROP CONSTRAINT IF EXISTS "_posts_v_parent_id_posts_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_posts_v_locales" DROP CONSTRAINT IF EXISTS "_posts_v_locales_version_meta_image_id_media_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_posts_v_locales" DROP CONSTRAINT IF EXISTS "_posts_v_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_version_hero_links" DROP CONSTRAINT IF EXISTS "_pages_v_version_hero_links_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_version_hero_links_locales" DROP CONSTRAINT IF EXISTS "_pages_v_version_hero_links_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_rels" DROP CONSTRAINT IF EXISTS "_pages_v_rels_posts_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_rels" DROP CONSTRAINT IF EXISTS "_pages_v_rels_parent_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_rels" DROP CONSTRAINT IF EXISTS "_pages_v_rels_pages_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_rels" DROP CONSTRAINT IF EXISTS "_pages_v_rels_media_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_rels" DROP CONSTRAINT IF EXISTS "_pages_v_rels_faq_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_rels" DROP CONSTRAINT IF EXISTS "_pages_v_rels_categories_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v" DROP CONSTRAINT IF EXISTS "_pages_v_parent_id_pages_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_locales" DROP CONSTRAINT IF EXISTS "_pages_v_locales_version_meta_image_id_media_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_locales" DROP CONSTRAINT IF EXISTS "_pages_v_locales_version_hero_media_id_media_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_locales" DROP CONSTRAINT IF EXISTS "_pages_v_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_stats_block" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_stats_block_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_stats_block_list" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_stats_block_list_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_pricing_block" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_pricing_block_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_pricing_block_base_features_features" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_pricing_block_base_features_features_parent_id_";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_pricing_block_additional_features_features" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_pricing_block_additional_features_features_pare";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_media_block" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_media_block_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_media_block" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_media_block_media_id_media_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_logo_block" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_logo_block_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_form_block" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_form_block_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_form_block" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_form_block_form_id_forms_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_faq_block" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_faq_block_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_faq_block_links" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_faq_block_links_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_faq_block_links_locales" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_faq_block_links_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_cta" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_cta_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_cta_links" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_cta_links_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_cta_links_locales" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_cta_links_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_content" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_content_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_content_list" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_content_list_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_content_list" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_content_list_media_id_media_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_content_list_locales" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_content_list_locales_parent_id_fk";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_archive" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_archive_parent_id_fk";
DROP INDEX IF EXISTS "public"."users_updated_at_idx";
DROP INDEX IF EXISTS "public"."users_sessions_parent_id_idx";
DROP INDEX IF EXISTS "public"."users_sessions_order_idx";
DROP INDEX IF EXISTS "public"."users_email_idx";
DROP INDEX IF EXISTS "public"."users_created_at_idx";
DROP INDEX IF EXISTS "public"."search_updated_at_idx";
DROP INDEX IF EXISTS "public"."search_slug_idx";
DROP INDEX IF EXISTS "public"."search_rels_posts_id_idx";
DROP INDEX IF EXISTS "public"."search_rels_path_idx";
DROP INDEX IF EXISTS "public"."search_rels_parent_idx";
DROP INDEX IF EXISTS "public"."search_rels_order_idx";
DROP INDEX IF EXISTS "public"."search_meta_meta_image_idx";
DROP INDEX IF EXISTS "public"."search_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."search_created_at_idx";
DROP INDEX IF EXISTS "public"."search_categories_parent_id_idx";
DROP INDEX IF EXISTS "public"."search_categories_order_idx";
DROP INDEX IF EXISTS "public"."redirects_updated_at_idx";
DROP INDEX IF EXISTS "public"."redirects_rels_posts_id_idx";
DROP INDEX IF EXISTS "public"."redirects_rels_path_idx";
DROP INDEX IF EXISTS "public"."redirects_rels_parent_idx";
DROP INDEX IF EXISTS "public"."redirects_rels_pages_id_idx";
DROP INDEX IF EXISTS "public"."redirects_rels_order_idx";
DROP INDEX IF EXISTS "public"."redirects_from_idx";
DROP INDEX IF EXISTS "public"."redirects_created_at_idx";
DROP INDEX IF EXISTS "public"."posts_updated_at_idx";
DROP INDEX IF EXISTS "public"."posts_slug_idx";
DROP INDEX IF EXISTS "public"."posts_rels_users_id_idx";
DROP INDEX IF EXISTS "public"."posts_rels_posts_id_idx";
DROP INDEX IF EXISTS "public"."posts_rels_path_idx";
DROP INDEX IF EXISTS "public"."posts_rels_parent_idx";
DROP INDEX IF EXISTS "public"."posts_rels_order_idx";
DROP INDEX IF EXISTS "public"."posts_rels_categories_id_idx";
DROP INDEX IF EXISTS "public"."posts_populated_authors_parent_id_idx";
DROP INDEX IF EXISTS "public"."posts_populated_authors_order_idx";
DROP INDEX IF EXISTS "public"."posts_meta_meta_image_idx";
DROP INDEX IF EXISTS "public"."posts_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."posts_hero_image_idx";
DROP INDEX IF EXISTS "public"."posts_created_at_idx";
DROP INDEX IF EXISTS "public"."posts__status_idx";
DROP INDEX IF EXISTS "public"."payload_preferences_updated_at_idx";
DROP INDEX IF EXISTS "public"."payload_preferences_rels_users_id_idx";
DROP INDEX IF EXISTS "public"."payload_preferences_rels_path_idx";
DROP INDEX IF EXISTS "public"."payload_preferences_rels_parent_idx";
DROP INDEX IF EXISTS "public"."payload_preferences_rels_order_idx";
DROP INDEX IF EXISTS "public"."payload_preferences_key_idx";
DROP INDEX IF EXISTS "public"."payload_preferences_created_at_idx";
DROP INDEX IF EXISTS "public"."payload_migrations_updated_at_idx";
DROP INDEX IF EXISTS "public"."payload_migrations_created_at_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_updated_at_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_rels_users_id_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_rels_search_id_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_rels_redirects_id_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_rels_posts_id_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_rels_payload_jobs_id_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_rels_path_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_rels_parent_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_rels_pages_id_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_rels_order_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_rels_media_id_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_rels_forms_id_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_rels_form_submissions_id_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_rels_faq_id_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_rels_categories_id_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_global_slug_idx";
DROP INDEX IF EXISTS "public"."payload_locked_documents_created_at_idx";
DROP INDEX IF EXISTS "public"."payload_jobs_wait_until_idx";
DROP INDEX IF EXISTS "public"."payload_jobs_updated_at_idx";
DROP INDEX IF EXISTS "public"."payload_jobs_total_tried_idx";
DROP INDEX IF EXISTS "public"."payload_jobs_task_slug_idx";
DROP INDEX IF EXISTS "public"."payload_jobs_queue_idx";
DROP INDEX IF EXISTS "public"."payload_jobs_processing_idx";
DROP INDEX IF EXISTS "public"."payload_jobs_log_parent_id_idx";
DROP INDEX IF EXISTS "public"."payload_jobs_log_order_idx";
DROP INDEX IF EXISTS "public"."payload_jobs_has_error_idx";
DROP INDEX IF EXISTS "public"."payload_jobs_created_at_idx";
DROP INDEX IF EXISTS "public"."payload_jobs_completed_at_idx";
DROP INDEX IF EXISTS "public"."pages_updated_at_idx";
DROP INDEX IF EXISTS "public"."pages_slug_idx";
DROP INDEX IF EXISTS "public"."pages_rels_posts_id_idx";
DROP INDEX IF EXISTS "public"."pages_rels_path_idx";
DROP INDEX IF EXISTS "public"."pages_rels_parent_idx";
DROP INDEX IF EXISTS "public"."pages_rels_pages_id_idx";
DROP INDEX IF EXISTS "public"."pages_rels_order_idx";
DROP INDEX IF EXISTS "public"."pages_rels_media_id_idx";
DROP INDEX IF EXISTS "public"."pages_rels_faq_id_idx";
DROP INDEX IF EXISTS "public"."pages_rels_categories_id_idx";
DROP INDEX IF EXISTS "public"."pages_meta_meta_image_idx";
DROP INDEX IF EXISTS "public"."pages_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."pages_hero_links_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_hero_links_order_idx";
DROP INDEX IF EXISTS "public"."pages_hero_links_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."pages_hero_hero_media_idx";
DROP INDEX IF EXISTS "public"."pages_created_at_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_stats_block_path_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_stats_block_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_stats_block_order_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_stats_block_list_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_stats_block_list_order_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_pricing_block_path_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_pricing_block_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_pricing_block_order_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_pricing_block_base_features_features_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_pricing_block_base_features_features_order_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_pricing_block_additional_features_features_parent_";
DROP INDEX IF EXISTS "public"."pages_blocks_pricing_block_additional_features_features_order_i";
DROP INDEX IF EXISTS "public"."pages_blocks_media_block_path_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_media_block_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_media_block_order_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_media_block_media_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_logo_block_path_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_logo_block_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_logo_block_order_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_form_block_path_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_form_block_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_form_block_order_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_form_block_form_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_faq_block_path_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_faq_block_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_faq_block_order_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_faq_block_links_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_faq_block_links_order_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_faq_block_links_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."pages_blocks_cta_path_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_cta_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_cta_order_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_cta_links_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_cta_links_order_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_cta_links_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."pages_blocks_content_path_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_content_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_content_order_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_content_list_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_content_list_order_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_content_list_media_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_content_list_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."pages_blocks_archive_path_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_archive_parent_id_idx";
DROP INDEX IF EXISTS "public"."pages_blocks_archive_order_idx";
DROP INDEX IF EXISTS "public"."pages__status_idx";
DROP INDEX IF EXISTS "public"."media_updated_at_idx";
DROP INDEX IF EXISTS "public"."media_sizes_xlarge_sizes_xlarge_filename_idx";
DROP INDEX IF EXISTS "public"."media_sizes_thumbnail_sizes_thumbnail_filename_idx";
DROP INDEX IF EXISTS "public"."media_sizes_square_sizes_square_filename_idx";
DROP INDEX IF EXISTS "public"."media_sizes_small_sizes_small_filename_idx";
DROP INDEX IF EXISTS "public"."media_sizes_og_sizes_og_filename_idx";
DROP INDEX IF EXISTS "public"."media_sizes_medium_sizes_medium_filename_idx";
DROP INDEX IF EXISTS "public"."media_sizes_large_sizes_large_filename_idx";
DROP INDEX IF EXISTS "public"."media_filename_idx";
DROP INDEX IF EXISTS "public"."media_created_at_idx";
DROP INDEX IF EXISTS "public"."header_rels_posts_id_idx";
DROP INDEX IF EXISTS "public"."header_rels_path_idx";
DROP INDEX IF EXISTS "public"."header_rels_parent_idx";
DROP INDEX IF EXISTS "public"."header_rels_pages_id_idx";
DROP INDEX IF EXISTS "public"."header_rels_order_idx";
DROP INDEX IF EXISTS "public"."header_nav_items_parent_id_idx";
DROP INDEX IF EXISTS "public"."header_nav_items_order_idx";
DROP INDEX IF EXISTS "public"."header_nav_items_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."forms_updated_at_idx";
DROP INDEX IF EXISTS "public"."forms_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."forms_emails_parent_id_idx";
DROP INDEX IF EXISTS "public"."forms_emails_order_idx";
DROP INDEX IF EXISTS "public"."forms_emails_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."forms_created_at_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_textarea_path_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_textarea_parent_id_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_textarea_order_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_textarea_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."forms_blocks_text_path_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_text_parent_id_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_text_order_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_text_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."forms_blocks_state_path_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_state_parent_id_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_state_order_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_state_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."forms_blocks_select_path_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_select_parent_id_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_select_order_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_select_options_parent_id_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_select_options_order_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_select_options_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."forms_blocks_select_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."forms_blocks_number_path_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_number_parent_id_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_number_order_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_number_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."forms_blocks_message_path_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_message_parent_id_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_message_order_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_message_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."forms_blocks_email_path_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_email_parent_id_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_email_order_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_email_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."forms_blocks_country_path_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_country_parent_id_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_country_order_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_country_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."forms_blocks_checkbox_path_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_checkbox_parent_id_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_checkbox_order_idx";
DROP INDEX IF EXISTS "public"."forms_blocks_checkbox_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."form_submissions_updated_at_idx";
DROP INDEX IF EXISTS "public"."form_submissions_submission_data_parent_id_idx";
DROP INDEX IF EXISTS "public"."form_submissions_submission_data_order_idx";
DROP INDEX IF EXISTS "public"."form_submissions_form_idx";
DROP INDEX IF EXISTS "public"."form_submissions_created_at_idx";
DROP INDEX IF EXISTS "public"."footer_rels_posts_id_idx";
DROP INDEX IF EXISTS "public"."footer_rels_path_idx";
DROP INDEX IF EXISTS "public"."footer_rels_parent_idx";
DROP INDEX IF EXISTS "public"."footer_rels_pages_id_idx";
DROP INDEX IF EXISTS "public"."footer_rels_order_idx";
DROP INDEX IF EXISTS "public"."footer_nav_items_parent_id_idx";
DROP INDEX IF EXISTS "public"."footer_nav_items_order_idx";
DROP INDEX IF EXISTS "public"."footer_nav_items_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."faq_updated_at_idx";
DROP INDEX IF EXISTS "public"."faq_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."faq_created_at_idx";
DROP INDEX IF EXISTS "public"."categories_updated_at_idx";
DROP INDEX IF EXISTS "public"."categories_slug_idx";
DROP INDEX IF EXISTS "public"."categories_parent_idx";
DROP INDEX IF EXISTS "public"."categories_created_at_idx";
DROP INDEX IF EXISTS "public"."categories_breadcrumbs_parent_id_idx";
DROP INDEX IF EXISTS "public"."categories_breadcrumbs_order_idx";
DROP INDEX IF EXISTS "public"."categories_breadcrumbs_locale_idx";
DROP INDEX IF EXISTS "public"."categories_breadcrumbs_doc_idx";
DROP INDEX IF EXISTS "public"."_posts_v_version_version_updated_at_idx";
DROP INDEX IF EXISTS "public"."_posts_v_version_version_slug_idx";
DROP INDEX IF EXISTS "public"."_posts_v_version_version_hero_image_idx";
DROP INDEX IF EXISTS "public"."_posts_v_version_version_created_at_idx";
DROP INDEX IF EXISTS "public"."_posts_v_version_version__status_idx";
DROP INDEX IF EXISTS "public"."_posts_v_version_populated_authors_parent_id_idx";
DROP INDEX IF EXISTS "public"."_posts_v_version_populated_authors_order_idx";
DROP INDEX IF EXISTS "public"."_posts_v_version_meta_version_meta_image_idx";
DROP INDEX IF EXISTS "public"."_posts_v_updated_at_idx";
DROP INDEX IF EXISTS "public"."_posts_v_snapshot_idx";
DROP INDEX IF EXISTS "public"."_posts_v_rels_users_id_idx";
DROP INDEX IF EXISTS "public"."_posts_v_rels_posts_id_idx";
DROP INDEX IF EXISTS "public"."_posts_v_rels_path_idx";
DROP INDEX IF EXISTS "public"."_posts_v_rels_parent_idx";
DROP INDEX IF EXISTS "public"."_posts_v_rels_order_idx";
DROP INDEX IF EXISTS "public"."_posts_v_rels_categories_id_idx";
DROP INDEX IF EXISTS "public"."_posts_v_published_locale_idx";
DROP INDEX IF EXISTS "public"."_posts_v_parent_idx";
DROP INDEX IF EXISTS "public"."_posts_v_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."_posts_v_latest_idx";
DROP INDEX IF EXISTS "public"."_posts_v_created_at_idx";
DROP INDEX IF EXISTS "public"."_posts_v_autosave_idx";
DROP INDEX IF EXISTS "public"."_pages_v_version_version_updated_at_idx";
DROP INDEX IF EXISTS "public"."_pages_v_version_version_slug_idx";
DROP INDEX IF EXISTS "public"."_pages_v_version_version_created_at_idx";
DROP INDEX IF EXISTS "public"."_pages_v_version_version__status_idx";
DROP INDEX IF EXISTS "public"."_pages_v_version_meta_version_meta_image_idx";
DROP INDEX IF EXISTS "public"."_pages_v_version_hero_version_hero_media_idx";
DROP INDEX IF EXISTS "public"."_pages_v_version_hero_links_parent_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_version_hero_links_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_version_hero_links_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."_pages_v_updated_at_idx";
DROP INDEX IF EXISTS "public"."_pages_v_snapshot_idx";
DROP INDEX IF EXISTS "public"."_pages_v_rels_posts_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_rels_path_idx";
DROP INDEX IF EXISTS "public"."_pages_v_rels_parent_idx";
DROP INDEX IF EXISTS "public"."_pages_v_rels_pages_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_rels_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_rels_media_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_rels_faq_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_rels_categories_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_published_locale_idx";
DROP INDEX IF EXISTS "public"."_pages_v_parent_idx";
DROP INDEX IF EXISTS "public"."_pages_v_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."_pages_v_latest_idx";
DROP INDEX IF EXISTS "public"."_pages_v_created_at_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_stats_block_path_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_stats_block_parent_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_stats_block_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_stats_block_list_parent_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_stats_block_list_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_pricing_block_path_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_pricing_block_parent_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_pricing_block_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_pricing_block_base_features_features_parent_id_";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_pricing_block_base_features_features_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_pricing_block_additional_features_features_pare";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_pricing_block_additional_features_features_orde";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_media_block_path_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_media_block_parent_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_media_block_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_media_block_media_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_logo_block_path_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_logo_block_parent_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_logo_block_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_form_block_path_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_form_block_parent_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_form_block_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_form_block_form_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_faq_block_path_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_faq_block_parent_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_faq_block_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_faq_block_links_parent_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_faq_block_links_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_faq_block_links_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_cta_path_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_cta_parent_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_cta_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_cta_links_parent_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_cta_links_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_cta_links_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_content_path_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_content_parent_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_content_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_content_list_parent_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_content_list_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_content_list_media_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_content_list_locales_locale_parent_id_unique";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_archive_path_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_archive_parent_id_idx";
DROP INDEX IF EXISTS "public"."_pages_v_blocks_archive_order_idx";
DROP INDEX IF EXISTS "public"."_pages_v_autosave_idx";
ALTER TABLE IF EXISTS ONLY "public"."users_sessions" DROP CONSTRAINT IF EXISTS "users_sessions_pkey";
ALTER TABLE IF EXISTS ONLY "public"."users" DROP CONSTRAINT IF EXISTS "users_pkey";
ALTER TABLE IF EXISTS ONLY "public"."search_rels" DROP CONSTRAINT IF EXISTS "search_rels_pkey";
ALTER TABLE IF EXISTS ONLY "public"."search" DROP CONSTRAINT IF EXISTS "search_pkey";
ALTER TABLE IF EXISTS ONLY "public"."search_locales" DROP CONSTRAINT IF EXISTS "search_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."search_categories" DROP CONSTRAINT IF EXISTS "search_categories_pkey";
ALTER TABLE IF EXISTS ONLY "public"."redirects_rels" DROP CONSTRAINT IF EXISTS "redirects_rels_pkey";
ALTER TABLE IF EXISTS ONLY "public"."redirects" DROP CONSTRAINT IF EXISTS "redirects_pkey";
ALTER TABLE IF EXISTS ONLY "public"."posts_rels" DROP CONSTRAINT IF EXISTS "posts_rels_pkey";
ALTER TABLE IF EXISTS ONLY "public"."posts_populated_authors" DROP CONSTRAINT IF EXISTS "posts_populated_authors_pkey";
ALTER TABLE IF EXISTS ONLY "public"."posts" DROP CONSTRAINT IF EXISTS "posts_pkey";
ALTER TABLE IF EXISTS ONLY "public"."posts_locales" DROP CONSTRAINT IF EXISTS "posts_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."payload_preferences_rels" DROP CONSTRAINT IF EXISTS "payload_preferences_rels_pkey";
ALTER TABLE IF EXISTS ONLY "public"."payload_preferences" DROP CONSTRAINT IF EXISTS "payload_preferences_pkey";
ALTER TABLE IF EXISTS ONLY "public"."payload_migrations" DROP CONSTRAINT IF EXISTS "payload_migrations_pkey";
ALTER TABLE IF EXISTS ONLY "public"."payload_locked_documents_rels" DROP CONSTRAINT IF EXISTS "payload_locked_documents_rels_pkey";
ALTER TABLE IF EXISTS ONLY "public"."payload_locked_documents" DROP CONSTRAINT IF EXISTS "payload_locked_documents_pkey";
ALTER TABLE IF EXISTS ONLY "public"."payload_jobs" DROP CONSTRAINT IF EXISTS "payload_jobs_pkey";
ALTER TABLE IF EXISTS ONLY "public"."payload_jobs_log" DROP CONSTRAINT IF EXISTS "payload_jobs_log_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_rels" DROP CONSTRAINT IF EXISTS "pages_rels_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages" DROP CONSTRAINT IF EXISTS "pages_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_locales" DROP CONSTRAINT IF EXISTS "pages_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_hero_links" DROP CONSTRAINT IF EXISTS "pages_hero_links_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_hero_links_locales" DROP CONSTRAINT IF EXISTS "pages_hero_links_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_stats_block" DROP CONSTRAINT IF EXISTS "pages_blocks_stats_block_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_stats_block_list" DROP CONSTRAINT IF EXISTS "pages_blocks_stats_block_list_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_pricing_block_base_features_features" DROP CONSTRAINT IF EXISTS "pages_blocks_pricing_block_pricing_items_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_pricing_block" DROP CONSTRAINT IF EXISTS "pages_blocks_pricing_block_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_pricing_block_additional_features_features" DROP CONSTRAINT IF EXISTS "pages_blocks_pricing_block_additional_features_features_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_media_block" DROP CONSTRAINT IF EXISTS "pages_blocks_media_block_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_logo_block" DROP CONSTRAINT IF EXISTS "pages_blocks_logo_block_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_form_block" DROP CONSTRAINT IF EXISTS "pages_blocks_form_block_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_faq_block" DROP CONSTRAINT IF EXISTS "pages_blocks_faq_block_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_faq_block_links" DROP CONSTRAINT IF EXISTS "pages_blocks_faq_block_links_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_faq_block_links_locales" DROP CONSTRAINT IF EXISTS "pages_blocks_faq_block_links_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_cta" DROP CONSTRAINT IF EXISTS "pages_blocks_cta_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_cta_links" DROP CONSTRAINT IF EXISTS "pages_blocks_cta_links_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_cta_links_locales" DROP CONSTRAINT IF EXISTS "pages_blocks_cta_links_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_content" DROP CONSTRAINT IF EXISTS "pages_blocks_content_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_content_list" DROP CONSTRAINT IF EXISTS "pages_blocks_content_list_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_content_list_locales" DROP CONSTRAINT IF EXISTS "pages_blocks_content_list_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."pages_blocks_archive" DROP CONSTRAINT IF EXISTS "pages_blocks_archive_pkey";
ALTER TABLE IF EXISTS ONLY "public"."media" DROP CONSTRAINT IF EXISTS "media_pkey";
ALTER TABLE IF EXISTS ONLY "public"."header_rels" DROP CONSTRAINT IF EXISTS "header_rels_pkey";
ALTER TABLE IF EXISTS ONLY "public"."header" DROP CONSTRAINT IF EXISTS "header_pkey";
ALTER TABLE IF EXISTS ONLY "public"."header_nav_items" DROP CONSTRAINT IF EXISTS "header_nav_items_pkey";
ALTER TABLE IF EXISTS ONLY "public"."header_nav_items_locales" DROP CONSTRAINT IF EXISTS "header_nav_items_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms" DROP CONSTRAINT IF EXISTS "forms_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_locales" DROP CONSTRAINT IF EXISTS "forms_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_emails" DROP CONSTRAINT IF EXISTS "forms_emails_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_emails_locales" DROP CONSTRAINT IF EXISTS "forms_emails_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_textarea" DROP CONSTRAINT IF EXISTS "forms_blocks_textarea_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_textarea_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_textarea_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_text" DROP CONSTRAINT IF EXISTS "forms_blocks_text_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_text_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_text_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_state" DROP CONSTRAINT IF EXISTS "forms_blocks_state_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_state_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_state_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_select" DROP CONSTRAINT IF EXISTS "forms_blocks_select_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_select_options" DROP CONSTRAINT IF EXISTS "forms_blocks_select_options_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_select_options_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_select_options_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_select_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_select_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_number" DROP CONSTRAINT IF EXISTS "forms_blocks_number_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_number_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_number_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_message" DROP CONSTRAINT IF EXISTS "forms_blocks_message_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_message_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_message_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_email" DROP CONSTRAINT IF EXISTS "forms_blocks_email_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_email_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_email_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_country" DROP CONSTRAINT IF EXISTS "forms_blocks_country_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_country_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_country_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_checkbox" DROP CONSTRAINT IF EXISTS "forms_blocks_checkbox_pkey";
ALTER TABLE IF EXISTS ONLY "public"."forms_blocks_checkbox_locales" DROP CONSTRAINT IF EXISTS "forms_blocks_checkbox_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."form_submissions_submission_data" DROP CONSTRAINT IF EXISTS "form_submissions_submission_data_pkey";
ALTER TABLE IF EXISTS ONLY "public"."form_submissions" DROP CONSTRAINT IF EXISTS "form_submissions_pkey";
ALTER TABLE IF EXISTS ONLY "public"."footer_rels" DROP CONSTRAINT IF EXISTS "footer_rels_pkey";
ALTER TABLE IF EXISTS ONLY "public"."footer" DROP CONSTRAINT IF EXISTS "footer_pkey";
ALTER TABLE IF EXISTS ONLY "public"."footer_nav_items" DROP CONSTRAINT IF EXISTS "footer_nav_items_pkey";
ALTER TABLE IF EXISTS ONLY "public"."footer_nav_items_locales" DROP CONSTRAINT IF EXISTS "footer_nav_items_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."faq" DROP CONSTRAINT IF EXISTS "faq_pkey";
ALTER TABLE IF EXISTS ONLY "public"."faq_locales" DROP CONSTRAINT IF EXISTS "faq_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."categories" DROP CONSTRAINT IF EXISTS "categories_pkey";
ALTER TABLE IF EXISTS ONLY "public"."categories_breadcrumbs" DROP CONSTRAINT IF EXISTS "categories_breadcrumbs_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_posts_v_version_populated_authors" DROP CONSTRAINT IF EXISTS "_posts_v_version_populated_authors_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_posts_v_rels" DROP CONSTRAINT IF EXISTS "_posts_v_rels_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_posts_v" DROP CONSTRAINT IF EXISTS "_posts_v_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_posts_v_locales" DROP CONSTRAINT IF EXISTS "_posts_v_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_version_hero_links" DROP CONSTRAINT IF EXISTS "_pages_v_version_hero_links_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_version_hero_links_locales" DROP CONSTRAINT IF EXISTS "_pages_v_version_hero_links_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_rels" DROP CONSTRAINT IF EXISTS "_pages_v_rels_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v" DROP CONSTRAINT IF EXISTS "_pages_v_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_locales" DROP CONSTRAINT IF EXISTS "_pages_v_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_stats_block" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_stats_block_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_stats_block_list" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_stats_block_list_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_pricing_block_base_features_features" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_pricing_block_pricing_items_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_pricing_block" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_pricing_block_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_pricing_block_additional_features_features" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_pricing_block_additional_features_features_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_media_block" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_media_block_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_logo_block" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_logo_block_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_form_block" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_form_block_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_faq_block" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_faq_block_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_faq_block_links" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_faq_block_links_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_faq_block_links_locales" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_faq_block_links_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_cta" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_cta_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_cta_links" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_cta_links_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_cta_links_locales" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_cta_links_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_content" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_content_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_content_list" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_content_list_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_content_list_locales" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_content_list_locales_pkey";
ALTER TABLE IF EXISTS ONLY "public"."_pages_v_blocks_archive" DROP CONSTRAINT IF EXISTS "_pages_v_blocks_archive_pkey";
ALTER TABLE IF EXISTS "public"."users" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."search_rels" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."search_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."search" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."redirects_rels" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."redirects" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."posts_rels" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."posts_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."posts" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."payload_preferences_rels" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."payload_preferences" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."payload_migrations" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."payload_locked_documents_rels" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."payload_locked_documents" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."payload_jobs" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."pages_rels" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."pages_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."pages_hero_links_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."pages_blocks_faq_block_links_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."pages_blocks_cta_links_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."pages_blocks_content_list_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."pages" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."media" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."header_rels" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."header_nav_items_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."header" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."forms_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."forms_emails_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."forms_blocks_textarea_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."forms_blocks_text_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."forms_blocks_state_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."forms_blocks_select_options_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."forms_blocks_select_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."forms_blocks_number_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."forms_blocks_message_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."forms_blocks_email_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."forms_blocks_country_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."forms_blocks_checkbox_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."forms" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."form_submissions" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."footer_rels" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."footer_nav_items_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."footer" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."faq_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."faq" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."categories" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_posts_v_version_populated_authors" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_posts_v_rels" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_posts_v_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_posts_v" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_version_hero_links_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_version_hero_links" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_rels" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_stats_block_list" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_stats_block" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_pricing_block_base_features_features" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_pricing_block_additional_features_features" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_pricing_block" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_media_block" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_logo_block" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_form_block" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_faq_block_links_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_faq_block_links" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_faq_block" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_cta_links_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_cta_links" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_cta" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_content_list_locales" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_content_list" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_content" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v_blocks_archive" ALTER COLUMN "id" DROP DEFAULT;
ALTER TABLE IF EXISTS "public"."_pages_v" ALTER COLUMN "id" DROP DEFAULT;
DROP TABLE IF EXISTS "public"."users_sessions";
DROP SEQUENCE IF EXISTS "public"."users_id_seq";
DROP TABLE IF EXISTS "public"."users";
DROP SEQUENCE IF EXISTS "public"."search_rels_id_seq";
DROP TABLE IF EXISTS "public"."search_rels";
DROP SEQUENCE IF EXISTS "public"."search_locales_id_seq";
DROP TABLE IF EXISTS "public"."search_locales";
DROP SEQUENCE IF EXISTS "public"."search_id_seq";
DROP TABLE IF EXISTS "public"."search_categories";
DROP TABLE IF EXISTS "public"."search";
DROP SEQUENCE IF EXISTS "public"."redirects_rels_id_seq";
DROP TABLE IF EXISTS "public"."redirects_rels";
DROP SEQUENCE IF EXISTS "public"."redirects_id_seq";
DROP TABLE IF EXISTS "public"."redirects";
DROP SEQUENCE IF EXISTS "public"."posts_rels_id_seq";
DROP TABLE IF EXISTS "public"."posts_rels";
DROP TABLE IF EXISTS "public"."posts_populated_authors";
DROP SEQUENCE IF EXISTS "public"."posts_locales_id_seq";
DROP TABLE IF EXISTS "public"."posts_locales";
DROP SEQUENCE IF EXISTS "public"."posts_id_seq";
DROP TABLE IF EXISTS "public"."posts";
DROP SEQUENCE IF EXISTS "public"."payload_preferences_rels_id_seq";
DROP TABLE IF EXISTS "public"."payload_preferences_rels";
DROP SEQUENCE IF EXISTS "public"."payload_preferences_id_seq";
DROP TABLE IF EXISTS "public"."payload_preferences";
DROP SEQUENCE IF EXISTS "public"."payload_migrations_id_seq";
DROP TABLE IF EXISTS "public"."payload_migrations";
DROP SEQUENCE IF EXISTS "public"."payload_locked_documents_rels_id_seq";
DROP TABLE IF EXISTS "public"."payload_locked_documents_rels";
DROP SEQUENCE IF EXISTS "public"."payload_locked_documents_id_seq";
DROP TABLE IF EXISTS "public"."payload_locked_documents";
DROP TABLE IF EXISTS "public"."payload_jobs_log";
DROP SEQUENCE IF EXISTS "public"."payload_jobs_id_seq";
DROP TABLE IF EXISTS "public"."payload_jobs";
DROP SEQUENCE IF EXISTS "public"."pages_rels_id_seq";
DROP TABLE IF EXISTS "public"."pages_rels";
DROP SEQUENCE IF EXISTS "public"."pages_locales_id_seq";
DROP TABLE IF EXISTS "public"."pages_locales";
DROP SEQUENCE IF EXISTS "public"."pages_id_seq";
DROP SEQUENCE IF EXISTS "public"."pages_hero_links_locales_id_seq";
DROP TABLE IF EXISTS "public"."pages_hero_links_locales";
DROP TABLE IF EXISTS "public"."pages_hero_links";
DROP TABLE IF EXISTS "public"."pages_blocks_stats_block_list";
DROP TABLE IF EXISTS "public"."pages_blocks_stats_block";
DROP TABLE IF EXISTS "public"."pages_blocks_pricing_block_base_features_features";
DROP TABLE IF EXISTS "public"."pages_blocks_pricing_block_additional_features_features";
DROP TABLE IF EXISTS "public"."pages_blocks_pricing_block";
DROP TABLE IF EXISTS "public"."pages_blocks_media_block";
DROP TABLE IF EXISTS "public"."pages_blocks_logo_block";
DROP TABLE IF EXISTS "public"."pages_blocks_form_block";
DROP SEQUENCE IF EXISTS "public"."pages_blocks_faq_block_links_locales_id_seq";
DROP TABLE IF EXISTS "public"."pages_blocks_faq_block_links_locales";
DROP TABLE IF EXISTS "public"."pages_blocks_faq_block_links";
DROP TABLE IF EXISTS "public"."pages_blocks_faq_block";
DROP SEQUENCE IF EXISTS "public"."pages_blocks_cta_links_locales_id_seq";
DROP TABLE IF EXISTS "public"."pages_blocks_cta_links_locales";
DROP TABLE IF EXISTS "public"."pages_blocks_cta_links";
DROP TABLE IF EXISTS "public"."pages_blocks_cta";
DROP SEQUENCE IF EXISTS "public"."pages_blocks_content_list_locales_id_seq";
DROP TABLE IF EXISTS "public"."pages_blocks_content_list_locales";
DROP TABLE IF EXISTS "public"."pages_blocks_content_list";
DROP TABLE IF EXISTS "public"."pages_blocks_content";
DROP TABLE IF EXISTS "public"."pages_blocks_archive";
DROP TABLE IF EXISTS "public"."pages";
DROP SEQUENCE IF EXISTS "public"."media_id_seq";
DROP TABLE IF EXISTS "public"."media";
DROP SEQUENCE IF EXISTS "public"."header_rels_id_seq";
DROP TABLE IF EXISTS "public"."header_rels";
DROP SEQUENCE IF EXISTS "public"."header_nav_items_locales_id_seq";
DROP TABLE IF EXISTS "public"."header_nav_items_locales";
DROP TABLE IF EXISTS "public"."header_nav_items";
DROP SEQUENCE IF EXISTS "public"."header_id_seq";
DROP TABLE IF EXISTS "public"."header";
DROP SEQUENCE IF EXISTS "public"."forms_locales_id_seq";
DROP TABLE IF EXISTS "public"."forms_locales";
DROP SEQUENCE IF EXISTS "public"."forms_id_seq";
DROP SEQUENCE IF EXISTS "public"."forms_emails_locales_id_seq";
DROP TABLE IF EXISTS "public"."forms_emails_locales";
DROP TABLE IF EXISTS "public"."forms_emails";
DROP SEQUENCE IF EXISTS "public"."forms_blocks_textarea_locales_id_seq";
DROP TABLE IF EXISTS "public"."forms_blocks_textarea_locales";
DROP TABLE IF EXISTS "public"."forms_blocks_textarea";
DROP SEQUENCE IF EXISTS "public"."forms_blocks_text_locales_id_seq";
DROP TABLE IF EXISTS "public"."forms_blocks_text_locales";
DROP TABLE IF EXISTS "public"."forms_blocks_text";
DROP SEQUENCE IF EXISTS "public"."forms_blocks_state_locales_id_seq";
DROP TABLE IF EXISTS "public"."forms_blocks_state_locales";
DROP TABLE IF EXISTS "public"."forms_blocks_state";
DROP SEQUENCE IF EXISTS "public"."forms_blocks_select_options_locales_id_seq";
DROP TABLE IF EXISTS "public"."forms_blocks_select_options_locales";
DROP TABLE IF EXISTS "public"."forms_blocks_select_options";
DROP SEQUENCE IF EXISTS "public"."forms_blocks_select_locales_id_seq";
DROP TABLE IF EXISTS "public"."forms_blocks_select_locales";
DROP TABLE IF EXISTS "public"."forms_blocks_select";
DROP SEQUENCE IF EXISTS "public"."forms_blocks_number_locales_id_seq";
DROP TABLE IF EXISTS "public"."forms_blocks_number_locales";
DROP TABLE IF EXISTS "public"."forms_blocks_number";
DROP SEQUENCE IF EXISTS "public"."forms_blocks_message_locales_id_seq";
DROP TABLE IF EXISTS "public"."forms_blocks_message_locales";
DROP TABLE IF EXISTS "public"."forms_blocks_message";
DROP SEQUENCE IF EXISTS "public"."forms_blocks_email_locales_id_seq";
DROP TABLE IF EXISTS "public"."forms_blocks_email_locales";
DROP TABLE IF EXISTS "public"."forms_blocks_email";
DROP SEQUENCE IF EXISTS "public"."forms_blocks_country_locales_id_seq";
DROP TABLE IF EXISTS "public"."forms_blocks_country_locales";
DROP TABLE IF EXISTS "public"."forms_blocks_country";
DROP SEQUENCE IF EXISTS "public"."forms_blocks_checkbox_locales_id_seq";
DROP TABLE IF EXISTS "public"."forms_blocks_checkbox_locales";
DROP TABLE IF EXISTS "public"."forms_blocks_checkbox";
DROP TABLE IF EXISTS "public"."forms";
DROP TABLE IF EXISTS "public"."form_submissions_submission_data";
DROP SEQUENCE IF EXISTS "public"."form_submissions_id_seq";
DROP TABLE IF EXISTS "public"."form_submissions";
DROP SEQUENCE IF EXISTS "public"."footer_rels_id_seq";
DROP TABLE IF EXISTS "public"."footer_rels";
DROP SEQUENCE IF EXISTS "public"."footer_nav_items_locales_id_seq";
DROP TABLE IF EXISTS "public"."footer_nav_items_locales";
DROP TABLE IF EXISTS "public"."footer_nav_items";
DROP SEQUENCE IF EXISTS "public"."footer_id_seq";
DROP TABLE IF EXISTS "public"."footer";
DROP SEQUENCE IF EXISTS "public"."faq_locales_id_seq";
DROP TABLE IF EXISTS "public"."faq_locales";
DROP SEQUENCE IF EXISTS "public"."faq_id_seq";
DROP TABLE IF EXISTS "public"."faq";
DROP SEQUENCE IF EXISTS "public"."categories_id_seq";
DROP TABLE IF EXISTS "public"."categories_breadcrumbs";
DROP TABLE IF EXISTS "public"."categories";
DROP SEQUENCE IF EXISTS "public"."_posts_v_version_populated_authors_id_seq";
DROP TABLE IF EXISTS "public"."_posts_v_version_populated_authors";
DROP SEQUENCE IF EXISTS "public"."_posts_v_rels_id_seq";
DROP TABLE IF EXISTS "public"."_posts_v_rels";
DROP SEQUENCE IF EXISTS "public"."_posts_v_locales_id_seq";
DROP TABLE IF EXISTS "public"."_posts_v_locales";
DROP SEQUENCE IF EXISTS "public"."_posts_v_id_seq";
DROP TABLE IF EXISTS "public"."_posts_v";
DROP SEQUENCE IF EXISTS "public"."_pages_v_version_hero_links_locales_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_version_hero_links_locales";
DROP SEQUENCE IF EXISTS "public"."_pages_v_version_hero_links_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_version_hero_links";
DROP SEQUENCE IF EXISTS "public"."_pages_v_rels_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_rels";
DROP SEQUENCE IF EXISTS "public"."_pages_v_locales_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_locales";
DROP SEQUENCE IF EXISTS "public"."_pages_v_id_seq";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_stats_block_list_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_stats_block_list";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_stats_block_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_stats_block";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_pricing_block_pricing_items_id_seq";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_pricing_block_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_pricing_block_base_features_features";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_pricing_block_additional_features_featur_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_pricing_block_additional_features_features";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_pricing_block";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_media_block_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_media_block";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_logo_block_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_logo_block";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_form_block_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_form_block";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_faq_block_links_locales_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_faq_block_links_locales";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_faq_block_links_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_faq_block_links";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_faq_block_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_faq_block";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_cta_links_locales_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_cta_links_locales";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_cta_links_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_cta_links";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_cta_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_cta";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_content_list_locales_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_content_list_locales";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_content_list_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_content_list";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_content_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_content";
DROP SEQUENCE IF EXISTS "public"."_pages_v_blocks_archive_id_seq";
DROP TABLE IF EXISTS "public"."_pages_v_blocks_archive";
DROP TABLE IF EXISTS "public"."_pages_v";
DROP TYPE IF EXISTS "public"."enum_redirects_to_type";
DROP TYPE IF EXISTS "public"."enum_posts_status";
DROP TYPE IF EXISTS "public"."enum_payload_jobs_task_slug";
DROP TYPE IF EXISTS "public"."enum_payload_jobs_log_task_slug";
DROP TYPE IF EXISTS "public"."enum_payload_jobs_log_state";
DROP TYPE IF EXISTS "public"."enum_pages_status";
DROP TYPE IF EXISTS "public"."enum_pages_hero_type";
DROP TYPE IF EXISTS "public"."enum_pages_hero_links_link_type";
DROP TYPE IF EXISTS "public"."enum_pages_hero_links_link_appearance";
DROP TYPE IF EXISTS "public"."enum_pages_blocks_faq_block_links_link_type";
DROP TYPE IF EXISTS "public"."enum_pages_blocks_faq_block_links_link_appearance";
DROP TYPE IF EXISTS "public"."enum_pages_blocks_cta_links_link_type";
DROP TYPE IF EXISTS "public"."enum_pages_blocks_cta_links_link_appearance";
DROP TYPE IF EXISTS "public"."enum_pages_blocks_content_variant";
DROP TYPE IF EXISTS "public"."enum_pages_blocks_content_list_size";
DROP TYPE IF EXISTS "public"."enum_pages_blocks_content_list_link_type";
DROP TYPE IF EXISTS "public"."enum_pages_blocks_content_list_link_appearance";
DROP TYPE IF EXISTS "public"."enum_pages_blocks_archive_relation_to";
DROP TYPE IF EXISTS "public"."enum_pages_blocks_archive_populate_by";
DROP TYPE IF EXISTS "public"."enum_header_nav_items_link_type";
DROP TYPE IF EXISTS "public"."enum_forms_confirmation_type";
DROP TYPE IF EXISTS "public"."enum_footer_nav_items_link_type";
DROP TYPE IF EXISTS "public"."enum__posts_v_version_status";
DROP TYPE IF EXISTS "public"."enum__posts_v_published_locale";
DROP TYPE IF EXISTS "public"."enum__pages_v_version_status";
DROP TYPE IF EXISTS "public"."enum__pages_v_version_hero_type";
DROP TYPE IF EXISTS "public"."enum__pages_v_version_hero_links_link_type";
DROP TYPE IF EXISTS "public"."enum__pages_v_version_hero_links_link_appearance";
DROP TYPE IF EXISTS "public"."enum__pages_v_published_locale";
DROP TYPE IF EXISTS "public"."enum__pages_v_blocks_faq_block_links_link_type";
DROP TYPE IF EXISTS "public"."enum__pages_v_blocks_faq_block_links_link_appearance";
DROP TYPE IF EXISTS "public"."enum__pages_v_blocks_cta_links_link_type";
DROP TYPE IF EXISTS "public"."enum__pages_v_blocks_cta_links_link_appearance";
DROP TYPE IF EXISTS "public"."enum__pages_v_blocks_content_variant";
DROP TYPE IF EXISTS "public"."enum__pages_v_blocks_content_list_size";
DROP TYPE IF EXISTS "public"."enum__pages_v_blocks_content_list_link_type";
DROP TYPE IF EXISTS "public"."enum__pages_v_blocks_content_list_link_appearance";
DROP TYPE IF EXISTS "public"."enum__pages_v_blocks_archive_relation_to";
DROP TYPE IF EXISTS "public"."enum__pages_v_blocks_archive_populate_by";
DROP TYPE IF EXISTS "public"."_locales";
--
-- Name: SCHEMA "public"; Type: COMMENT; Schema: -; Owner: -
--

COMMENT ON SCHEMA "public" IS 'standard public schema';


--
-- Name: _locales; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."_locales" AS ENUM (
    'en',
    'ar'
);


--
-- Name: enum__pages_v_blocks_archive_populate_by; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_blocks_archive_populate_by" AS ENUM (
    'collection',
    'selection'
);


--
-- Name: enum__pages_v_blocks_archive_relation_to; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_blocks_archive_relation_to" AS ENUM (
    'posts'
);


--
-- Name: enum__pages_v_blocks_content_list_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_blocks_content_list_link_appearance" AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum__pages_v_blocks_content_list_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_blocks_content_list_link_type" AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum__pages_v_blocks_content_list_size; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_blocks_content_list_size" AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


--
-- Name: enum__pages_v_blocks_content_variant; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_blocks_content_variant" AS ENUM (
    '1',
    '2',
    '3',
    '4'
);


--
-- Name: enum__pages_v_blocks_cta_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_blocks_cta_links_link_appearance" AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum__pages_v_blocks_cta_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_blocks_cta_links_link_type" AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum__pages_v_blocks_faq_block_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_blocks_faq_block_links_link_appearance" AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum__pages_v_blocks_faq_block_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_blocks_faq_block_links_link_type" AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum__pages_v_published_locale; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_published_locale" AS ENUM (
    'en',
    'ar'
);


--
-- Name: enum__pages_v_version_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_version_hero_links_link_appearance" AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum__pages_v_version_hero_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_version_hero_links_link_type" AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum__pages_v_version_hero_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_version_hero_type" AS ENUM (
    'none',
    'highImpact',
    'mediumImpact',
    'lowImpact'
);


--
-- Name: enum__pages_v_version_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__pages_v_version_status" AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum__posts_v_published_locale; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__posts_v_published_locale" AS ENUM (
    'en',
    'ar'
);


--
-- Name: enum__posts_v_version_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum__posts_v_version_status" AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_footer_nav_items_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_footer_nav_items_link_type" AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_forms_confirmation_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_forms_confirmation_type" AS ENUM (
    'message',
    'redirect'
);


--
-- Name: enum_header_nav_items_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_header_nav_items_link_type" AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_blocks_archive_populate_by; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_pages_blocks_archive_populate_by" AS ENUM (
    'collection',
    'selection'
);


--
-- Name: enum_pages_blocks_archive_relation_to; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_pages_blocks_archive_relation_to" AS ENUM (
    'posts'
);


--
-- Name: enum_pages_blocks_content_list_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_pages_blocks_content_list_link_appearance" AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum_pages_blocks_content_list_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_pages_blocks_content_list_link_type" AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_blocks_content_list_size; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_pages_blocks_content_list_size" AS ENUM (
    'oneThird',
    'half',
    'twoThirds',
    'full'
);


--
-- Name: enum_pages_blocks_content_variant; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_pages_blocks_content_variant" AS ENUM (
    '1',
    '2',
    '3',
    '4'
);


--
-- Name: enum_pages_blocks_cta_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_pages_blocks_cta_links_link_appearance" AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum_pages_blocks_cta_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_pages_blocks_cta_links_link_type" AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_blocks_faq_block_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_pages_blocks_faq_block_links_link_appearance" AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum_pages_blocks_faq_block_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_pages_blocks_faq_block_links_link_type" AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_hero_links_link_appearance; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_pages_hero_links_link_appearance" AS ENUM (
    'default',
    'outline'
);


--
-- Name: enum_pages_hero_links_link_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_pages_hero_links_link_type" AS ENUM (
    'reference',
    'custom'
);


--
-- Name: enum_pages_hero_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_pages_hero_type" AS ENUM (
    'none',
    'highImpact',
    'mediumImpact',
    'lowImpact'
);


--
-- Name: enum_pages_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_pages_status" AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_payload_jobs_log_state; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_payload_jobs_log_state" AS ENUM (
    'failed',
    'succeeded'
);


--
-- Name: enum_payload_jobs_log_task_slug; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_payload_jobs_log_task_slug" AS ENUM (
    'inline',
    'schedulePublish'
);


--
-- Name: enum_payload_jobs_task_slug; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_payload_jobs_task_slug" AS ENUM (
    'inline',
    'schedulePublish'
);


--
-- Name: enum_posts_status; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_posts_status" AS ENUM (
    'draft',
    'published'
);


--
-- Name: enum_redirects_to_type; Type: TYPE; Schema: public; Owner: -
--

CREATE TYPE "public"."enum_redirects_to_type" AS ENUM (
    'reference',
    'custom'
);


SET default_tablespace = '';

SET default_table_access_method = "heap";

--
-- Name: _pages_v; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v" (
    "id" integer NOT NULL,
    "parent_id" integer,
    "version_title" character varying,
    "version_hero_type" "public"."enum__pages_v_version_hero_type" DEFAULT 'lowImpact'::"public"."enum__pages_v_version_hero_type",
    "version_published_at" timestamp(3) with time zone,
    "version_slug" character varying,
    "version_slug_lock" boolean DEFAULT true,
    "version_updated_at" timestamp(3) with time zone,
    "version_created_at" timestamp(3) with time zone,
    "version__status" "public"."enum__pages_v_version_status" DEFAULT 'draft'::"public"."enum__pages_v_version_status",
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "snapshot" boolean,
    "published_locale" "public"."enum__pages_v_published_locale",
    "latest" boolean,
    "autosave" boolean,
    "version_hero_link_text" character varying
);


--
-- Name: _pages_v_blocks_archive; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_archive" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" integer NOT NULL,
    "intro_content" "jsonb",
    "populate_by" "public"."enum__pages_v_blocks_archive_populate_by" DEFAULT 'collection'::"public"."enum__pages_v_blocks_archive_populate_by",
    "relation_to" "public"."enum__pages_v_blocks_archive_relation_to" DEFAULT 'posts'::"public"."enum__pages_v_blocks_archive_relation_to",
    "limit" numeric DEFAULT 10,
    "_uuid" character varying,
    "block_name" character varying
);


--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_archive_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_archive_id_seq" OWNED BY "public"."_pages_v_blocks_archive"."id";


--
-- Name: _pages_v_blocks_content; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_content" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" integer NOT NULL,
    "variant" "public"."enum__pages_v_blocks_content_variant" DEFAULT '1'::"public"."enum__pages_v_blocks_content_variant",
    "rich_text" "jsonb",
    "_uuid" character varying,
    "block_name" character varying
);


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_content_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_content_id_seq" OWNED BY "public"."_pages_v_blocks_content"."id";


--
-- Name: _pages_v_blocks_content_list; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_content_list" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" integer NOT NULL,
    "size" "public"."enum__pages_v_blocks_content_list_size" DEFAULT 'oneThird'::"public"."enum__pages_v_blocks_content_list_size",
    "icon" character varying,
    "tag" character varying,
    "heading" character varying,
    "content" "jsonb",
    "media_id" integer,
    "link_type" "public"."enum__pages_v_blocks_content_list_link_type" DEFAULT 'reference'::"public"."enum__pages_v_blocks_content_list_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_appearance" "public"."enum__pages_v_blocks_content_list_link_appearance" DEFAULT 'default'::"public"."enum__pages_v_blocks_content_list_link_appearance",
    "_uuid" character varying
);


--
-- Name: _pages_v_blocks_content_list_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_content_list_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_content_list_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_content_list_id_seq" OWNED BY "public"."_pages_v_blocks_content_list"."id";


--
-- Name: _pages_v_blocks_content_list_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_content_list_locales" (
    "link_label" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" integer NOT NULL
);


--
-- Name: _pages_v_blocks_content_list_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_content_list_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_content_list_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_content_list_locales_id_seq" OWNED BY "public"."_pages_v_blocks_content_list_locales"."id";


--
-- Name: _pages_v_blocks_cta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_cta" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" integer NOT NULL,
    "rich_text" "jsonb",
    "_uuid" character varying,
    "block_name" character varying
);


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_cta_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_cta_id_seq" OWNED BY "public"."_pages_v_blocks_cta"."id";


--
-- Name: _pages_v_blocks_cta_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_cta_links" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" integer NOT NULL,
    "link_type" "public"."enum__pages_v_blocks_cta_links_link_type" DEFAULT 'reference'::"public"."enum__pages_v_blocks_cta_links_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_appearance" "public"."enum__pages_v_blocks_cta_links_link_appearance" DEFAULT 'default'::"public"."enum__pages_v_blocks_cta_links_link_appearance",
    "_uuid" character varying
);


--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_cta_links_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_cta_links_id_seq" OWNED BY "public"."_pages_v_blocks_cta_links"."id";


--
-- Name: _pages_v_blocks_cta_links_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_cta_links_locales" (
    "link_label" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" integer NOT NULL
);


--
-- Name: _pages_v_blocks_cta_links_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_cta_links_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_cta_links_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_cta_links_locales_id_seq" OWNED BY "public"."_pages_v_blocks_cta_links_locales"."id";


--
-- Name: _pages_v_blocks_faq_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_faq_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" integer NOT NULL,
    "rich_text" "jsonb",
    "_uuid" character varying,
    "block_name" character varying
);


--
-- Name: _pages_v_blocks_faq_block_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_faq_block_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_faq_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_faq_block_id_seq" OWNED BY "public"."_pages_v_blocks_faq_block"."id";


--
-- Name: _pages_v_blocks_faq_block_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_faq_block_links" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" integer NOT NULL,
    "link_type" "public"."enum__pages_v_blocks_faq_block_links_link_type" DEFAULT 'reference'::"public"."enum__pages_v_blocks_faq_block_links_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_appearance" "public"."enum__pages_v_blocks_faq_block_links_link_appearance" DEFAULT 'default'::"public"."enum__pages_v_blocks_faq_block_links_link_appearance",
    "_uuid" character varying
);


--
-- Name: _pages_v_blocks_faq_block_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_faq_block_links_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_faq_block_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_faq_block_links_id_seq" OWNED BY "public"."_pages_v_blocks_faq_block_links"."id";


--
-- Name: _pages_v_blocks_faq_block_links_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_faq_block_links_locales" (
    "link_label" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" integer NOT NULL
);


--
-- Name: _pages_v_blocks_faq_block_links_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_faq_block_links_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_faq_block_links_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_faq_block_links_locales_id_seq" OWNED BY "public"."_pages_v_blocks_faq_block_links_locales"."id";


--
-- Name: _pages_v_blocks_form_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_form_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" integer NOT NULL,
    "form_id" integer,
    "enable_heading" boolean,
    "rich_text" "jsonb",
    "_uuid" character varying,
    "block_name" character varying
);


--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_form_block_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_form_block_id_seq" OWNED BY "public"."_pages_v_blocks_form_block"."id";


--
-- Name: _pages_v_blocks_logo_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_logo_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" integer NOT NULL,
    "caption" "jsonb",
    "_uuid" character varying,
    "block_name" character varying
);


--
-- Name: _pages_v_blocks_logo_block_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_logo_block_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_logo_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_logo_block_id_seq" OWNED BY "public"."_pages_v_blocks_logo_block"."id";


--
-- Name: _pages_v_blocks_media_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_media_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" integer NOT NULL,
    "media_id" integer,
    "_uuid" character varying,
    "block_name" character varying
);


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_media_block_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_media_block_id_seq" OWNED BY "public"."_pages_v_blocks_media_block"."id";


--
-- Name: _pages_v_blocks_pricing_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_pricing_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" integer NOT NULL,
    "rich_text" "jsonb",
    "_uuid" character varying,
    "block_name" character varying,
    "base_features_tag" character varying,
    "base_features_heading" character varying,
    "base_features_content" "jsonb",
    "additional_features_tag" character varying,
    "additional_features_heading" character varying,
    "additional_features_content" "jsonb",
    "tag" character varying
);


--
-- Name: _pages_v_blocks_pricing_block_additional_features_features; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_pricing_block_additional_features_features" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" integer NOT NULL,
    "icon" character varying,
    "feature" character varying,
    "_uuid" character varying,
    "description" character varying
);


--
-- Name: _pages_v_blocks_pricing_block_additional_features_featur_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_pricing_block_additional_features_featur_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_pricing_block_additional_features_featur_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_pricing_block_additional_features_featur_id_seq" OWNED BY "public"."_pages_v_blocks_pricing_block_additional_features_features"."id";


--
-- Name: _pages_v_blocks_pricing_block_base_features_features; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_pricing_block_base_features_features" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" integer NOT NULL,
    "_uuid" character varying,
    "icon" character varying,
    "feature" character varying,
    "description" character varying
);


--
-- Name: _pages_v_blocks_pricing_block_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_pricing_block_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_pricing_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_pricing_block_id_seq" OWNED BY "public"."_pages_v_blocks_pricing_block"."id";


--
-- Name: _pages_v_blocks_pricing_block_pricing_items_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_pricing_block_pricing_items_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_pricing_block_pricing_items_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_pricing_block_pricing_items_id_seq" OWNED BY "public"."_pages_v_blocks_pricing_block_base_features_features"."id";


--
-- Name: _pages_v_blocks_stats_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_stats_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" integer NOT NULL,
    "caption" "jsonb",
    "_uuid" character varying,
    "block_name" character varying
);


--
-- Name: _pages_v_blocks_stats_block_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_stats_block_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_stats_block_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_stats_block_id_seq" OWNED BY "public"."_pages_v_blocks_stats_block"."id";


--
-- Name: _pages_v_blocks_stats_block_list; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_blocks_stats_block_list" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" integer NOT NULL,
    "number" character varying,
    "description" character varying,
    "_uuid" character varying
);


--
-- Name: _pages_v_blocks_stats_block_list_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_blocks_stats_block_list_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_blocks_stats_block_list_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_blocks_stats_block_list_id_seq" OWNED BY "public"."_pages_v_blocks_stats_block_list"."id";


--
-- Name: _pages_v_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_id_seq" OWNED BY "public"."_pages_v"."id";


--
-- Name: _pages_v_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_locales" (
    "version_hero_rich_text" "jsonb",
    "version_hero_media_id" integer,
    "version_meta_title" character varying,
    "version_meta_image_id" integer,
    "version_meta_description" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" integer NOT NULL
);


--
-- Name: _pages_v_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_locales_id_seq" OWNED BY "public"."_pages_v_locales"."id";


--
-- Name: _pages_v_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "pages_id" integer,
    "posts_id" integer,
    "categories_id" integer,
    "faq_id" integer,
    "media_id" integer
);


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_rels_id_seq" OWNED BY "public"."_pages_v_rels"."id";


--
-- Name: _pages_v_version_hero_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_version_hero_links" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" integer NOT NULL,
    "link_type" "public"."enum__pages_v_version_hero_links_link_type" DEFAULT 'reference'::"public"."enum__pages_v_version_hero_links_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_appearance" "public"."enum__pages_v_version_hero_links_link_appearance" DEFAULT 'default'::"public"."enum__pages_v_version_hero_links_link_appearance",
    "_uuid" character varying
);


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_version_hero_links_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_version_hero_links_id_seq" OWNED BY "public"."_pages_v_version_hero_links"."id";


--
-- Name: _pages_v_version_hero_links_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_pages_v_version_hero_links_locales" (
    "link_label" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" integer NOT NULL
);


--
-- Name: _pages_v_version_hero_links_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_pages_v_version_hero_links_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _pages_v_version_hero_links_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_pages_v_version_hero_links_locales_id_seq" OWNED BY "public"."_pages_v_version_hero_links_locales"."id";


--
-- Name: _posts_v; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_posts_v" (
    "id" integer NOT NULL,
    "parent_id" integer,
    "version_title" character varying,
    "version_hero_image_id" integer,
    "version_content" "jsonb",
    "version_published_at" timestamp(3) with time zone,
    "version_slug" character varying,
    "version_slug_lock" boolean DEFAULT true,
    "version_updated_at" timestamp(3) with time zone,
    "version_created_at" timestamp(3) with time zone,
    "version__status" "public"."enum__posts_v_version_status" DEFAULT 'draft'::"public"."enum__posts_v_version_status",
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "snapshot" boolean,
    "published_locale" "public"."enum__posts_v_published_locale",
    "latest" boolean,
    "autosave" boolean
);


--
-- Name: _posts_v_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_posts_v_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _posts_v_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_posts_v_id_seq" OWNED BY "public"."_posts_v"."id";


--
-- Name: _posts_v_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_posts_v_locales" (
    "version_meta_title" character varying,
    "version_meta_image_id" integer,
    "version_meta_description" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" integer NOT NULL
);


--
-- Name: _posts_v_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_posts_v_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _posts_v_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_posts_v_locales_id_seq" OWNED BY "public"."_posts_v_locales"."id";


--
-- Name: _posts_v_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_posts_v_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "posts_id" integer,
    "categories_id" integer,
    "users_id" integer
);


--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_posts_v_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_posts_v_rels_id_seq" OWNED BY "public"."_posts_v_rels"."id";


--
-- Name: _posts_v_version_populated_authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."_posts_v_version_populated_authors" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" integer NOT NULL,
    "_uuid" character varying,
    "name" character varying
);


--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."_posts_v_version_populated_authors_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."_posts_v_version_populated_authors_id_seq" OWNED BY "public"."_posts_v_version_populated_authors"."id";


--
-- Name: categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."categories" (
    "id" integer NOT NULL,
    "title" character varying NOT NULL,
    "slug" character varying,
    "slug_lock" boolean DEFAULT true,
    "parent_id" integer,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


--
-- Name: categories_breadcrumbs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."categories_breadcrumbs" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "id" character varying NOT NULL,
    "doc_id" integer,
    "url" character varying,
    "label" character varying
);


--
-- Name: categories_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."categories_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: categories_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."categories_id_seq" OWNED BY "public"."categories"."id";


--
-- Name: faq; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."faq" (
    "id" integer NOT NULL,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


--
-- Name: faq_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."faq_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: faq_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."faq_id_seq" OWNED BY "public"."faq"."id";


--
-- Name: faq_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."faq_locales" (
    "question" character varying,
    "answer" "jsonb",
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" integer NOT NULL
);


--
-- Name: faq_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."faq_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: faq_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."faq_locales_id_seq" OWNED BY "public"."faq_locales"."id";


--
-- Name: footer; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."footer" (
    "id" integer NOT NULL,
    "updated_at" timestamp(3) with time zone,
    "created_at" timestamp(3) with time zone
);


--
-- Name: footer_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."footer_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: footer_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."footer_id_seq" OWNED BY "public"."footer"."id";


--
-- Name: footer_nav_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."footer_nav_items" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "link_type" "public"."enum_footer_nav_items_link_type" DEFAULT 'reference'::"public"."enum_footer_nav_items_link_type",
    "link_new_tab" boolean,
    "link_url" character varying
);


--
-- Name: footer_nav_items_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."footer_nav_items_locales" (
    "link_label" character varying NOT NULL,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: footer_nav_items_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."footer_nav_items_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: footer_nav_items_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."footer_nav_items_locales_id_seq" OWNED BY "public"."footer_nav_items_locales"."id";


--
-- Name: footer_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."footer_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "pages_id" integer,
    "posts_id" integer
);


--
-- Name: footer_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."footer_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: footer_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."footer_rels_id_seq" OWNED BY "public"."footer_rels"."id";


--
-- Name: form_submissions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."form_submissions" (
    "id" integer NOT NULL,
    "form_id" integer NOT NULL,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


--
-- Name: form_submissions_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."form_submissions_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: form_submissions_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."form_submissions_id_seq" OWNED BY "public"."form_submissions"."id";


--
-- Name: form_submissions_submission_data; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."form_submissions_submission_data" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "field" character varying NOT NULL,
    "value" character varying NOT NULL
);


--
-- Name: forms; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms" (
    "id" integer NOT NULL,
    "title" character varying NOT NULL,
    "confirmation_type" "public"."enum_forms_confirmation_type" DEFAULT 'message'::"public"."enum_forms_confirmation_type",
    "redirect_url" character varying,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


--
-- Name: forms_blocks_checkbox; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_checkbox" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "width" numeric,
    "required" boolean,
    "default_value" boolean,
    "block_name" character varying
);


--
-- Name: forms_blocks_checkbox_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_checkbox_locales" (
    "label" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: forms_blocks_checkbox_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."forms_blocks_checkbox_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_blocks_checkbox_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."forms_blocks_checkbox_locales_id_seq" OWNED BY "public"."forms_blocks_checkbox_locales"."id";


--
-- Name: forms_blocks_country; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_country" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "width" numeric,
    "required" boolean,
    "block_name" character varying
);


--
-- Name: forms_blocks_country_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_country_locales" (
    "label" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: forms_blocks_country_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."forms_blocks_country_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_blocks_country_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."forms_blocks_country_locales_id_seq" OWNED BY "public"."forms_blocks_country_locales"."id";


--
-- Name: forms_blocks_email; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_email" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "width" numeric,
    "required" boolean,
    "block_name" character varying
);


--
-- Name: forms_blocks_email_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_email_locales" (
    "label" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: forms_blocks_email_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."forms_blocks_email_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_blocks_email_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."forms_blocks_email_locales_id_seq" OWNED BY "public"."forms_blocks_email_locales"."id";


--
-- Name: forms_blocks_message; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_message" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "block_name" character varying
);


--
-- Name: forms_blocks_message_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_message_locales" (
    "message" "jsonb",
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: forms_blocks_message_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."forms_blocks_message_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_blocks_message_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."forms_blocks_message_locales_id_seq" OWNED BY "public"."forms_blocks_message_locales"."id";


--
-- Name: forms_blocks_number; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_number" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "width" numeric,
    "default_value" numeric,
    "required" boolean,
    "block_name" character varying
);


--
-- Name: forms_blocks_number_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_number_locales" (
    "label" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: forms_blocks_number_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."forms_blocks_number_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_blocks_number_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."forms_blocks_number_locales_id_seq" OWNED BY "public"."forms_blocks_number_locales"."id";


--
-- Name: forms_blocks_select; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_select" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "width" numeric,
    "required" boolean,
    "block_name" character varying,
    "placeholder" character varying
);


--
-- Name: forms_blocks_select_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_select_locales" (
    "label" character varying,
    "default_value" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: forms_blocks_select_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."forms_blocks_select_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_blocks_select_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."forms_blocks_select_locales_id_seq" OWNED BY "public"."forms_blocks_select_locales"."id";


--
-- Name: forms_blocks_select_options; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_select_options" (
    "_order" integer NOT NULL,
    "_parent_id" character varying NOT NULL,
    "id" character varying NOT NULL,
    "value" character varying NOT NULL
);


--
-- Name: forms_blocks_select_options_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_select_options_locales" (
    "label" character varying NOT NULL,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: forms_blocks_select_options_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."forms_blocks_select_options_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_blocks_select_options_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."forms_blocks_select_options_locales_id_seq" OWNED BY "public"."forms_blocks_select_options_locales"."id";


--
-- Name: forms_blocks_state; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_state" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "width" numeric,
    "required" boolean,
    "block_name" character varying
);


--
-- Name: forms_blocks_state_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_state_locales" (
    "label" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: forms_blocks_state_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."forms_blocks_state_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_blocks_state_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."forms_blocks_state_locales_id_seq" OWNED BY "public"."forms_blocks_state_locales"."id";


--
-- Name: forms_blocks_text; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_text" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "width" numeric,
    "required" boolean,
    "block_name" character varying
);


--
-- Name: forms_blocks_text_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_text_locales" (
    "label" character varying,
    "default_value" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: forms_blocks_text_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."forms_blocks_text_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_blocks_text_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."forms_blocks_text_locales_id_seq" OWNED BY "public"."forms_blocks_text_locales"."id";


--
-- Name: forms_blocks_textarea; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_textarea" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying NOT NULL,
    "width" numeric,
    "required" boolean,
    "block_name" character varying
);


--
-- Name: forms_blocks_textarea_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_blocks_textarea_locales" (
    "label" character varying,
    "default_value" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: forms_blocks_textarea_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."forms_blocks_textarea_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_blocks_textarea_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."forms_blocks_textarea_locales_id_seq" OWNED BY "public"."forms_blocks_textarea_locales"."id";


--
-- Name: forms_emails; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_emails" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "email_to" character varying,
    "cc" character varying,
    "bcc" character varying,
    "reply_to" character varying,
    "email_from" character varying
);


--
-- Name: forms_emails_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_emails_locales" (
    "subject" character varying DEFAULT 'You''ve received a new message.'::character varying NOT NULL,
    "message" "jsonb",
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: forms_emails_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."forms_emails_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_emails_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."forms_emails_locales_id_seq" OWNED BY "public"."forms_emails_locales"."id";


--
-- Name: forms_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."forms_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."forms_id_seq" OWNED BY "public"."forms"."id";


--
-- Name: forms_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."forms_locales" (
    "submit_button_label" character varying,
    "confirmation_message" "jsonb",
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" integer NOT NULL
);


--
-- Name: forms_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."forms_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: forms_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."forms_locales_id_seq" OWNED BY "public"."forms_locales"."id";


--
-- Name: header; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."header" (
    "id" integer NOT NULL,
    "updated_at" timestamp(3) with time zone,
    "created_at" timestamp(3) with time zone
);


--
-- Name: header_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."header_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: header_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."header_id_seq" OWNED BY "public"."header"."id";


--
-- Name: header_nav_items; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."header_nav_items" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "link_type" "public"."enum_header_nav_items_link_type" DEFAULT 'reference'::"public"."enum_header_nav_items_link_type",
    "link_new_tab" boolean,
    "link_url" character varying
);


--
-- Name: header_nav_items_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."header_nav_items_locales" (
    "link_label" character varying NOT NULL,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: header_nav_items_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."header_nav_items_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: header_nav_items_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."header_nav_items_locales_id_seq" OWNED BY "public"."header_nav_items_locales"."id";


--
-- Name: header_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."header_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "pages_id" integer,
    "posts_id" integer
);


--
-- Name: header_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."header_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: header_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."header_rels_id_seq" OWNED BY "public"."header_rels"."id";


--
-- Name: media; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."media" (
    "id" integer NOT NULL,
    "alt" character varying,
    "caption" "jsonb",
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "url" character varying,
    "thumbnail_u_r_l" character varying,
    "filename" character varying,
    "mime_type" character varying,
    "filesize" numeric,
    "width" numeric,
    "height" numeric,
    "focal_x" numeric,
    "focal_y" numeric,
    "sizes_thumbnail_url" character varying,
    "sizes_thumbnail_width" numeric,
    "sizes_thumbnail_height" numeric,
    "sizes_thumbnail_mime_type" character varying,
    "sizes_thumbnail_filesize" numeric,
    "sizes_thumbnail_filename" character varying,
    "sizes_square_url" character varying,
    "sizes_square_width" numeric,
    "sizes_square_height" numeric,
    "sizes_square_mime_type" character varying,
    "sizes_square_filesize" numeric,
    "sizes_square_filename" character varying,
    "sizes_small_url" character varying,
    "sizes_small_width" numeric,
    "sizes_small_height" numeric,
    "sizes_small_mime_type" character varying,
    "sizes_small_filesize" numeric,
    "sizes_small_filename" character varying,
    "sizes_medium_url" character varying,
    "sizes_medium_width" numeric,
    "sizes_medium_height" numeric,
    "sizes_medium_mime_type" character varying,
    "sizes_medium_filesize" numeric,
    "sizes_medium_filename" character varying,
    "sizes_large_url" character varying,
    "sizes_large_width" numeric,
    "sizes_large_height" numeric,
    "sizes_large_mime_type" character varying,
    "sizes_large_filesize" numeric,
    "sizes_large_filename" character varying,
    "sizes_xlarge_url" character varying,
    "sizes_xlarge_width" numeric,
    "sizes_xlarge_height" numeric,
    "sizes_xlarge_mime_type" character varying,
    "sizes_xlarge_filesize" numeric,
    "sizes_xlarge_filename" character varying,
    "sizes_og_url" character varying,
    "sizes_og_width" numeric,
    "sizes_og_height" numeric,
    "sizes_og_mime_type" character varying,
    "sizes_og_filesize" numeric,
    "sizes_og_filename" character varying,
    "prefix" character varying
);


--
-- Name: media_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."media_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: media_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."media_id_seq" OWNED BY "public"."media"."id";


--
-- Name: pages; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages" (
    "id" integer NOT NULL,
    "title" character varying,
    "hero_type" "public"."enum_pages_hero_type" DEFAULT 'lowImpact'::"public"."enum_pages_hero_type",
    "published_at" timestamp(3) with time zone,
    "slug" character varying,
    "slug_lock" boolean DEFAULT true,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "_status" "public"."enum_pages_status" DEFAULT 'draft'::"public"."enum_pages_status",
    "hero_link_text" character varying
);


--
-- Name: pages_blocks_archive; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_archive" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "intro_content" "jsonb",
    "populate_by" "public"."enum_pages_blocks_archive_populate_by" DEFAULT 'collection'::"public"."enum_pages_blocks_archive_populate_by",
    "relation_to" "public"."enum_pages_blocks_archive_relation_to" DEFAULT 'posts'::"public"."enum_pages_blocks_archive_relation_to",
    "limit" numeric DEFAULT 10,
    "block_name" character varying
);


--
-- Name: pages_blocks_content; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_content" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "variant" "public"."enum_pages_blocks_content_variant" DEFAULT '1'::"public"."enum_pages_blocks_content_variant",
    "rich_text" "jsonb",
    "block_name" character varying
);


--
-- Name: pages_blocks_content_list; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_content_list" (
    "_order" integer NOT NULL,
    "_parent_id" character varying NOT NULL,
    "id" character varying NOT NULL,
    "size" "public"."enum_pages_blocks_content_list_size" DEFAULT 'oneThird'::"public"."enum_pages_blocks_content_list_size",
    "icon" character varying,
    "tag" character varying,
    "heading" character varying,
    "content" "jsonb",
    "media_id" integer,
    "link_type" "public"."enum_pages_blocks_content_list_link_type" DEFAULT 'reference'::"public"."enum_pages_blocks_content_list_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_appearance" "public"."enum_pages_blocks_content_list_link_appearance" DEFAULT 'default'::"public"."enum_pages_blocks_content_list_link_appearance"
);


--
-- Name: pages_blocks_content_list_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_content_list_locales" (
    "link_label" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: pages_blocks_content_list_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."pages_blocks_content_list_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_content_list_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."pages_blocks_content_list_locales_id_seq" OWNED BY "public"."pages_blocks_content_list_locales"."id";


--
-- Name: pages_blocks_cta; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_cta" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "rich_text" "jsonb",
    "block_name" character varying
);


--
-- Name: pages_blocks_cta_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_cta_links" (
    "_order" integer NOT NULL,
    "_parent_id" character varying NOT NULL,
    "id" character varying NOT NULL,
    "link_type" "public"."enum_pages_blocks_cta_links_link_type" DEFAULT 'reference'::"public"."enum_pages_blocks_cta_links_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_appearance" "public"."enum_pages_blocks_cta_links_link_appearance" DEFAULT 'default'::"public"."enum_pages_blocks_cta_links_link_appearance"
);


--
-- Name: pages_blocks_cta_links_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_cta_links_locales" (
    "link_label" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: pages_blocks_cta_links_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."pages_blocks_cta_links_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_cta_links_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."pages_blocks_cta_links_locales_id_seq" OWNED BY "public"."pages_blocks_cta_links_locales"."id";


--
-- Name: pages_blocks_faq_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_faq_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "rich_text" "jsonb",
    "block_name" character varying
);


--
-- Name: pages_blocks_faq_block_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_faq_block_links" (
    "_order" integer NOT NULL,
    "_parent_id" character varying NOT NULL,
    "id" character varying NOT NULL,
    "link_type" "public"."enum_pages_blocks_faq_block_links_link_type" DEFAULT 'reference'::"public"."enum_pages_blocks_faq_block_links_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_appearance" "public"."enum_pages_blocks_faq_block_links_link_appearance" DEFAULT 'default'::"public"."enum_pages_blocks_faq_block_links_link_appearance"
);


--
-- Name: pages_blocks_faq_block_links_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_faq_block_links_locales" (
    "link_label" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: pages_blocks_faq_block_links_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."pages_blocks_faq_block_links_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_blocks_faq_block_links_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."pages_blocks_faq_block_links_locales_id_seq" OWNED BY "public"."pages_blocks_faq_block_links_locales"."id";


--
-- Name: pages_blocks_form_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_form_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "form_id" integer,
    "enable_heading" boolean,
    "rich_text" "jsonb",
    "block_name" character varying
);


--
-- Name: pages_blocks_logo_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_logo_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "caption" "jsonb",
    "block_name" character varying
);


--
-- Name: pages_blocks_media_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_media_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "media_id" integer,
    "block_name" character varying
);


--
-- Name: pages_blocks_pricing_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_pricing_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "rich_text" "jsonb",
    "block_name" character varying,
    "base_features_tag" character varying,
    "base_features_heading" character varying,
    "base_features_content" "jsonb",
    "additional_features_tag" character varying,
    "additional_features_heading" character varying,
    "additional_features_content" "jsonb",
    "tag" character varying
);


--
-- Name: pages_blocks_pricing_block_additional_features_features; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_pricing_block_additional_features_features" (
    "_order" integer NOT NULL,
    "_parent_id" character varying NOT NULL,
    "id" character varying NOT NULL,
    "icon" character varying,
    "feature" character varying,
    "description" character varying
);


--
-- Name: pages_blocks_pricing_block_base_features_features; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_pricing_block_base_features_features" (
    "_order" integer NOT NULL,
    "_parent_id" character varying NOT NULL,
    "id" character varying NOT NULL,
    "icon" character varying,
    "feature" character varying,
    "description" character varying
);


--
-- Name: pages_blocks_stats_block; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_stats_block" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "_path" "text" NOT NULL,
    "id" character varying NOT NULL,
    "caption" "jsonb",
    "block_name" character varying
);


--
-- Name: pages_blocks_stats_block_list; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_blocks_stats_block_list" (
    "_order" integer NOT NULL,
    "_parent_id" character varying NOT NULL,
    "id" character varying NOT NULL,
    "number" character varying,
    "description" character varying
);


--
-- Name: pages_hero_links; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_hero_links" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "link_type" "public"."enum_pages_hero_links_link_type" DEFAULT 'reference'::"public"."enum_pages_hero_links_link_type",
    "link_new_tab" boolean,
    "link_url" character varying,
    "link_appearance" "public"."enum_pages_hero_links_link_appearance" DEFAULT 'default'::"public"."enum_pages_hero_links_link_appearance"
);


--
-- Name: pages_hero_links_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_hero_links_locales" (
    "link_label" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" character varying NOT NULL
);


--
-- Name: pages_hero_links_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."pages_hero_links_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_hero_links_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."pages_hero_links_locales_id_seq" OWNED BY "public"."pages_hero_links_locales"."id";


--
-- Name: pages_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."pages_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."pages_id_seq" OWNED BY "public"."pages"."id";


--
-- Name: pages_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_locales" (
    "hero_rich_text" "jsonb",
    "hero_media_id" integer,
    "meta_title" character varying,
    "meta_image_id" integer,
    "meta_description" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" integer NOT NULL
);


--
-- Name: pages_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."pages_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."pages_locales_id_seq" OWNED BY "public"."pages_locales"."id";


--
-- Name: pages_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."pages_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "pages_id" integer,
    "posts_id" integer,
    "categories_id" integer,
    "faq_id" integer,
    "media_id" integer
);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."pages_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: pages_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."pages_rels_id_seq" OWNED BY "public"."pages_rels"."id";


--
-- Name: payload_jobs; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."payload_jobs" (
    "id" integer NOT NULL,
    "input" "jsonb",
    "completed_at" timestamp(3) with time zone,
    "total_tried" numeric DEFAULT 0,
    "has_error" boolean DEFAULT false,
    "error" "jsonb",
    "task_slug" "public"."enum_payload_jobs_task_slug",
    "queue" character varying DEFAULT 'default'::character varying,
    "wait_until" timestamp(3) with time zone,
    "processing" boolean DEFAULT false,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


--
-- Name: payload_jobs_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."payload_jobs_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_jobs_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."payload_jobs_id_seq" OWNED BY "public"."payload_jobs"."id";


--
-- Name: payload_jobs_log; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."payload_jobs_log" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "executed_at" timestamp(3) with time zone NOT NULL,
    "completed_at" timestamp(3) with time zone NOT NULL,
    "task_slug" "public"."enum_payload_jobs_log_task_slug" NOT NULL,
    "task_i_d" character varying NOT NULL,
    "input" "jsonb",
    "output" "jsonb",
    "state" "public"."enum_payload_jobs_log_state" NOT NULL,
    "error" "jsonb"
);


--
-- Name: payload_locked_documents; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."payload_locked_documents" (
    "id" integer NOT NULL,
    "global_slug" character varying,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."payload_locked_documents_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."payload_locked_documents_id_seq" OWNED BY "public"."payload_locked_documents"."id";


--
-- Name: payload_locked_documents_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."payload_locked_documents_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "pages_id" integer,
    "posts_id" integer,
    "media_id" integer,
    "categories_id" integer,
    "faq_id" integer,
    "users_id" integer,
    "redirects_id" integer,
    "forms_id" integer,
    "form_submissions_id" integer,
    "search_id" integer,
    "payload_jobs_id" integer
);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."payload_locked_documents_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."payload_locked_documents_rels_id_seq" OWNED BY "public"."payload_locked_documents_rels"."id";


--
-- Name: payload_migrations; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."payload_migrations" (
    "id" integer NOT NULL,
    "name" character varying,
    "batch" numeric,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."payload_migrations_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."payload_migrations_id_seq" OWNED BY "public"."payload_migrations"."id";


--
-- Name: payload_preferences; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."payload_preferences" (
    "id" integer NOT NULL,
    "key" character varying,
    "value" "jsonb",
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."payload_preferences_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."payload_preferences_id_seq" OWNED BY "public"."payload_preferences"."id";


--
-- Name: payload_preferences_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."payload_preferences_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "users_id" integer
);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."payload_preferences_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."payload_preferences_rels_id_seq" OWNED BY "public"."payload_preferences_rels"."id";


--
-- Name: posts; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."posts" (
    "id" integer NOT NULL,
    "title" character varying,
    "hero_image_id" integer,
    "content" "jsonb",
    "published_at" timestamp(3) with time zone,
    "slug" character varying,
    "slug_lock" boolean DEFAULT true,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "_status" "public"."enum_posts_status" DEFAULT 'draft'::"public"."enum_posts_status"
);


--
-- Name: posts_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."posts_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: posts_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."posts_id_seq" OWNED BY "public"."posts"."id";


--
-- Name: posts_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."posts_locales" (
    "meta_title" character varying,
    "meta_image_id" integer,
    "meta_description" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" integer NOT NULL
);


--
-- Name: posts_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."posts_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: posts_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."posts_locales_id_seq" OWNED BY "public"."posts_locales"."id";


--
-- Name: posts_populated_authors; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."posts_populated_authors" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "name" character varying
);


--
-- Name: posts_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."posts_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "posts_id" integer,
    "categories_id" integer,
    "users_id" integer
);


--
-- Name: posts_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."posts_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: posts_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."posts_rels_id_seq" OWNED BY "public"."posts_rels"."id";


--
-- Name: redirects; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."redirects" (
    "id" integer NOT NULL,
    "from" character varying NOT NULL,
    "to_type" "public"."enum_redirects_to_type" DEFAULT 'reference'::"public"."enum_redirects_to_type",
    "to_url" character varying,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


--
-- Name: redirects_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."redirects_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: redirects_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."redirects_id_seq" OWNED BY "public"."redirects"."id";


--
-- Name: redirects_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."redirects_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "pages_id" integer,
    "posts_id" integer
);


--
-- Name: redirects_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."redirects_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: redirects_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."redirects_rels_id_seq" OWNED BY "public"."redirects_rels"."id";


--
-- Name: search; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."search" (
    "id" integer NOT NULL,
    "priority" numeric,
    "slug" character varying,
    "meta_title" character varying,
    "meta_description" character varying,
    "meta_image_id" integer,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL
);


--
-- Name: search_categories; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."search_categories" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "relation_to" character varying,
    "title" character varying
);


--
-- Name: search_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."search_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: search_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."search_id_seq" OWNED BY "public"."search"."id";


--
-- Name: search_locales; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."search_locales" (
    "title" character varying,
    "id" integer NOT NULL,
    "_locale" "public"."_locales" NOT NULL,
    "_parent_id" integer NOT NULL
);


--
-- Name: search_locales_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."search_locales_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: search_locales_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."search_locales_id_seq" OWNED BY "public"."search_locales"."id";


--
-- Name: search_rels; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."search_rels" (
    "id" integer NOT NULL,
    "order" integer,
    "parent_id" integer NOT NULL,
    "path" character varying NOT NULL,
    "posts_id" integer
);


--
-- Name: search_rels_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."search_rels_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: search_rels_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."search_rels_id_seq" OWNED BY "public"."search_rels"."id";


--
-- Name: users; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."users" (
    "id" integer NOT NULL,
    "name" character varying,
    "updated_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "created_at" timestamp(3) with time zone DEFAULT "now"() NOT NULL,
    "email" character varying NOT NULL,
    "reset_password_token" character varying,
    "reset_password_expiration" timestamp(3) with time zone,
    "salt" character varying,
    "hash" character varying,
    "login_attempts" numeric DEFAULT 0,
    "lock_until" timestamp(3) with time zone
);


--
-- Name: users_id_seq; Type: SEQUENCE; Schema: public; Owner: -
--

CREATE SEQUENCE "public"."users_id_seq"
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


--
-- Name: users_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: -
--

ALTER SEQUENCE "public"."users_id_seq" OWNED BY "public"."users"."id";


--
-- Name: users_sessions; Type: TABLE; Schema: public; Owner: -
--

CREATE TABLE "public"."users_sessions" (
    "_order" integer NOT NULL,
    "_parent_id" integer NOT NULL,
    "id" character varying NOT NULL,
    "created_at" timestamp(3) with time zone,
    "expires_at" timestamp(3) with time zone NOT NULL
);


--
-- Name: _pages_v id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_archive id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_archive" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_archive_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_content id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_content" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_content_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_content_list id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_content_list" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_content_list_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_content_list_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_content_list_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_content_list_locales_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_cta id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_cta" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_cta_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_cta_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_cta_links" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_cta_links_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_cta_links_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_cta_links_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_cta_links_locales_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_faq_block id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_faq_block" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_faq_block_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_faq_block_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_faq_block_links" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_faq_block_links_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_faq_block_links_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_faq_block_links_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_faq_block_links_locales_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_form_block id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_form_block" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_form_block_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_logo_block id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_logo_block" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_logo_block_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_media_block id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_media_block" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_media_block_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_pricing_block id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_pricing_block" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_pricing_block_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_pricing_block_additional_features_features id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_pricing_block_additional_features_features" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_pricing_block_additional_features_featur_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_pricing_block_base_features_features id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_pricing_block_base_features_features" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_pricing_block_pricing_items_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_stats_block id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_stats_block" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_stats_block_id_seq"'::"regclass");


--
-- Name: _pages_v_blocks_stats_block_list id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_stats_block_list" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_blocks_stats_block_list_id_seq"'::"regclass");


--
-- Name: _pages_v_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_locales_id_seq"'::"regclass");


--
-- Name: _pages_v_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_rels_id_seq"'::"regclass");


--
-- Name: _pages_v_version_hero_links id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_version_hero_links" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_version_hero_links_id_seq"'::"regclass");


--
-- Name: _pages_v_version_hero_links_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_version_hero_links_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_pages_v_version_hero_links_locales_id_seq"'::"regclass");


--
-- Name: _posts_v id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_posts_v_id_seq"'::"regclass");


--
-- Name: _posts_v_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_posts_v_locales_id_seq"'::"regclass");


--
-- Name: _posts_v_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_posts_v_rels_id_seq"'::"regclass");


--
-- Name: _posts_v_version_populated_authors id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v_version_populated_authors" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."_posts_v_version_populated_authors_id_seq"'::"regclass");


--
-- Name: categories id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."categories" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."categories_id_seq"'::"regclass");


--
-- Name: faq id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."faq" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."faq_id_seq"'::"regclass");


--
-- Name: faq_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."faq_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."faq_locales_id_seq"'::"regclass");


--
-- Name: footer id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."footer" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."footer_id_seq"'::"regclass");


--
-- Name: footer_nav_items_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."footer_nav_items_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."footer_nav_items_locales_id_seq"'::"regclass");


--
-- Name: footer_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."footer_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."footer_rels_id_seq"'::"regclass");


--
-- Name: form_submissions id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."form_submissions" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."form_submissions_id_seq"'::"regclass");


--
-- Name: forms id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."forms_id_seq"'::"regclass");


--
-- Name: forms_blocks_checkbox_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_checkbox_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."forms_blocks_checkbox_locales_id_seq"'::"regclass");


--
-- Name: forms_blocks_country_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_country_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."forms_blocks_country_locales_id_seq"'::"regclass");


--
-- Name: forms_blocks_email_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_email_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."forms_blocks_email_locales_id_seq"'::"regclass");


--
-- Name: forms_blocks_message_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_message_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."forms_blocks_message_locales_id_seq"'::"regclass");


--
-- Name: forms_blocks_number_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_number_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."forms_blocks_number_locales_id_seq"'::"regclass");


--
-- Name: forms_blocks_select_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_select_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."forms_blocks_select_locales_id_seq"'::"regclass");


--
-- Name: forms_blocks_select_options_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_select_options_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."forms_blocks_select_options_locales_id_seq"'::"regclass");


--
-- Name: forms_blocks_state_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_state_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."forms_blocks_state_locales_id_seq"'::"regclass");


--
-- Name: forms_blocks_text_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_text_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."forms_blocks_text_locales_id_seq"'::"regclass");


--
-- Name: forms_blocks_textarea_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_textarea_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."forms_blocks_textarea_locales_id_seq"'::"regclass");


--
-- Name: forms_emails_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_emails_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."forms_emails_locales_id_seq"'::"regclass");


--
-- Name: forms_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."forms_locales_id_seq"'::"regclass");


--
-- Name: header id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."header" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."header_id_seq"'::"regclass");


--
-- Name: header_nav_items_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."header_nav_items_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."header_nav_items_locales_id_seq"'::"regclass");


--
-- Name: header_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."header_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."header_rels_id_seq"'::"regclass");


--
-- Name: media id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."media" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."media_id_seq"'::"regclass");


--
-- Name: pages id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."pages_id_seq"'::"regclass");


--
-- Name: pages_blocks_content_list_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_content_list_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."pages_blocks_content_list_locales_id_seq"'::"regclass");


--
-- Name: pages_blocks_cta_links_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_cta_links_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."pages_blocks_cta_links_locales_id_seq"'::"regclass");


--
-- Name: pages_blocks_faq_block_links_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_faq_block_links_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."pages_blocks_faq_block_links_locales_id_seq"'::"regclass");


--
-- Name: pages_hero_links_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_hero_links_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."pages_hero_links_locales_id_seq"'::"regclass");


--
-- Name: pages_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."pages_locales_id_seq"'::"regclass");


--
-- Name: pages_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."pages_rels_id_seq"'::"regclass");


--
-- Name: payload_jobs id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_jobs" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."payload_jobs_id_seq"'::"regclass");


--
-- Name: payload_locked_documents id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."payload_locked_documents_id_seq"'::"regclass");


--
-- Name: payload_locked_documents_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."payload_locked_documents_rels_id_seq"'::"regclass");


--
-- Name: payload_migrations id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_migrations" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."payload_migrations_id_seq"'::"regclass");


--
-- Name: payload_preferences id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_preferences" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."payload_preferences_id_seq"'::"regclass");


--
-- Name: payload_preferences_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_preferences_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."payload_preferences_rels_id_seq"'::"regclass");


--
-- Name: posts id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."posts_id_seq"'::"regclass");


--
-- Name: posts_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."posts_locales_id_seq"'::"regclass");


--
-- Name: posts_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."posts_rels_id_seq"'::"regclass");


--
-- Name: redirects id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."redirects" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."redirects_id_seq"'::"regclass");


--
-- Name: redirects_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."redirects_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."redirects_rels_id_seq"'::"regclass");


--
-- Name: search id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."search" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."search_id_seq"'::"regclass");


--
-- Name: search_locales id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."search_locales" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."search_locales_id_seq"'::"regclass");


--
-- Name: search_rels id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."search_rels" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."search_rels_id_seq"'::"regclass");


--
-- Name: users id; Type: DEFAULT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."users" ALTER COLUMN "id" SET DEFAULT "nextval"('"public"."users_id_seq"'::"regclass");


--
-- Data for Name: _pages_v; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v" ("id", "parent_id", "version_title", "version_hero_type", "version_published_at", "version_slug", "version_slug_lock", "version_updated_at", "version_created_at", "version__status", "created_at", "updated_at", "snapshot", "published_locale", "latest", "autosave", "version_hero_link_text") FROM stdin;
17	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-08-16 05:41:03.006+00	2025-03-21 08:44:07.555+00	published	2025-08-16 05:41:03.603+00	2025-08-16 05:41:03.604+00	\N	\N	t	f	\N
14	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-03-27 09:15:00.456+00	2025-03-21 08:44:07.555+00	draft	2025-03-27 09:14:37.449+00	2025-03-27 09:15:00.489+00	\N	\N	f	t	\N
13	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-03-27 09:08:19.296+00	2025-03-21 08:44:07.555+00	published	2025-03-27 09:08:19.978+00	2025-03-27 09:08:19.98+00	\N	\N	f	f	\N
11	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-03-24 11:00:39.808+00	2025-03-21 08:44:07.555+00	published	2025-03-24 11:00:40.394+00	2025-03-24 11:00:40.396+00	\N	\N	f	f	\N
9	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-03-22 14:31:47.383+00	2025-03-21 08:44:07.555+00	published	2025-03-22 14:31:47.812+00	2025-03-22 14:31:47.813+00	\N	\N	f	f	\N
8	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-03-22 14:31:43.749+00	2025-03-21 08:44:07.555+00	draft	2025-03-22 14:31:43.749+00	2025-03-22 14:31:43.803+00	\N	\N	f	t	\N
7	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-03-22 14:30:41.305+00	2025-03-21 08:44:07.555+00	published	2025-03-22 14:30:41.787+00	2025-03-22 14:30:41.788+00	\N	\N	f	f	\N
5	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-03-21 14:52:44.629+00	2025-03-21 08:44:07.555+00	published	2025-03-21 14:52:44.654+00	2025-03-21 14:52:44.654+00	\N	\N	f	f	\N
3	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-03-21 09:15:52.599+00	2025-03-21 08:44:07.555+00	published	2025-03-21 09:15:52.622+00	2025-03-21 09:15:52.622+00	\N	\N	f	f	\N
1	1	\N	lowImpact	\N	\N	t	2025-03-21 08:44:07.556+00	2025-03-21 08:44:07.555+00	draft	2025-03-21 08:44:07.568+00	2025-03-21 08:44:07.568+00	\N	\N	f	f	\N
16	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-08-16 05:40:48.887+00	2025-03-21 08:44:07.555+00	draft	2025-04-13 12:33:10.58+00	2025-08-16 05:40:48.919+00	\N	\N	f	t	\N
15	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-03-27 09:15:08.325+00	2025-03-21 08:44:07.555+00	published	2025-03-27 09:15:08.861+00	2025-03-27 09:15:08.864+00	\N	\N	f	f	\N
2	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-03-21 09:14:10.039+00	2025-03-21 08:44:07.555+00	draft	2025-03-21 08:44:07.866+00	2025-03-21 09:14:10.043+00	\N	\N	f	t	\N
4	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-03-21 14:52:41.399+00	2025-03-21 08:44:07.555+00	draft	2025-03-21 09:17:44.67+00	2025-03-21 14:52:41.405+00	\N	\N	f	t	\N
6	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-03-22 14:30:38.718+00	2025-03-21 08:44:07.555+00	draft	2025-03-22 08:15:31.296+00	2025-03-22 14:30:38.764+00	\N	\N	f	t	\N
10	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-03-24 11:00:16.19+00	2025-03-21 08:44:07.555+00	draft	2025-03-24 10:49:54.313+00	2025-03-24 11:00:16.216+00	\N	\N	f	t	\N
12	1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-03-27 09:07:31.443+00	2025-03-21 08:44:07.555+00	draft	2025-03-26 13:29:31.493+00	2025-03-27 09:07:31.518+00	\N	\N	f	t	\N
\.


--
-- Data for Name: _pages_v_blocks_archive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_archive" ("_order", "_parent_id", "_path", "id", "intro_content", "populate_by", "relation_to", "limit", "_uuid", "block_name") FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_content; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_content" ("_order", "_parent_id", "_path", "id", "variant", "rich_text", "_uuid", "block_name") FROM stdin;
1	2	version.layout	59	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
1	3	version.layout	60	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
1	4	version.layout	2395	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
2	4	version.layout	2396	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2eb8a896e469ebeae65b	HOW TO
5	4	version.layout	2397	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd41cca896e469ebeae665	FEATURES
1	5	version.layout	2398	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
2	5	version.layout	2399	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2eb8a896e469ebeae65b	HOW TO
5	5	version.layout	2400	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd41cca896e469ebeae665	FEATURES
1	6	version.layout	2584	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
2	6	version.layout	2585	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2eb8a896e469ebeae65b	HOW TO
5	6	version.layout	2586	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd41cca896e469ebeae665	FEATURES
1	7	version.layout	2587	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
1	8	version.layout	2590	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
2	8	version.layout	2591	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2eb8a896e469ebeae65b	HOW TO
5	8	version.layout	2592	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd41cca896e469ebeae665	FEATURES
1	9	version.layout	2593	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
2	9	version.layout	2594	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2eb8a896e469ebeae65b	HOW TO
1	10	version.layout	2680	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
2	10	version.layout	2681	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2eb8a896e469ebeae65b	HOW TO
5	10	version.layout	2682	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd41cca896e469ebeae665	FEATURES
2	7	version.layout	2588	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2eb8a896e469ebeae65b	HOW TO
5	7	version.layout	2589	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd41cca896e469ebeae665	FEATURES
5	9	version.layout	2595	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd41cca896e469ebeae665	FEATURES
1	11	version.layout	2683	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
2	11	version.layout	2684	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2eb8a896e469ebeae65b	HOW TO
5	11	version.layout	2685	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd41cca896e469ebeae665	FEATURES
1	14	version.layout	2791	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
2	14	version.layout	2792	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2eb8a896e469ebeae65b	HOW TO
5	14	version.layout	2793	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd41cca896e469ebeae665	FEATURES
1	15	version.layout	2794	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
2	15	version.layout	2795	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2eb8a896e469ebeae65b	HOW TO
5	15	version.layout	2796	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd41cca896e469ebeae665	FEATURES
1	12	version.layout	2746	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
2	12	version.layout	2747	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2eb8a896e469ebeae65b	HOW TO
5	12	version.layout	2748	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd41cca896e469ebeae665	FEATURES
1	13	version.layout	2749	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
2	13	version.layout	2750	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2eb8a896e469ebeae65b	HOW TO
5	13	version.layout	2751	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd41cca896e469ebeae665	FEATURES
1	16	version.layout	2858	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
2	16	version.layout	2859	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2eb8a896e469ebeae65b	HOW TO
5	16	version.layout	2860	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd41cca896e469ebeae665	FEATURES
1	17	version.layout	2861	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2a7dee9c04239ea1fea1	WHY ZAD
2	17	version.layout	2862	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd2eb8a896e469ebeae65b	HOW TO
5	17	version.layout	2863	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd41cca896e469ebeae665	FEATURES
\.


--
-- Data for Name: _pages_v_blocks_content_list; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_content_list" ("_order", "_parent_id", "id", "size", "icon", "tag", "heading", "content", "media_id", "link_type", "link_new_tab", "link_url", "link_appearance", "_uuid") FROM stdin;
1	2749	9051	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	24	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
2	2749	9052	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	25	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
3	2749	9053	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	26	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
4	2749	9054	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	28	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
1	2750	9055	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2ef2a896e469ebeae65d
2	2750	9056	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f24a896e469ebeae65f
3	2750	9057	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f3da896e469ebeae661
4	2750	9058	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f5ba896e469ebeae663
1	2751	9059	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	22	reference	\N	\N	default	67dd42c2a14b92b128ef217a
2	2751	9060	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	21	reference	\N	\N	default	67dd42f7a14b92b128ef217c
1	2584	8501	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	24	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
1	2396	7875	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2ef2a896e469ebeae65d
2	2396	7876	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f24a896e469ebeae65f
3	2396	7877	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f3da896e469ebeae661
4	2396	7878	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f5ba896e469ebeae663
1	2399	7885	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2ef2a896e469ebeae65d
2	2399	7886	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f24a896e469ebeae65f
3	2399	7887	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f3da896e469ebeae661
4	2399	7888	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f5ba896e469ebeae663
2	2397	7880	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd42f7a14b92b128ef217c
2	2400	7890	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd42f7a14b92b128ef217c
4	59	112	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
4	60	116	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
4	2395	7874	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
4	2398	7884	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
1	59	109	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
1	60	113	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
1	2395	7871	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
1	2398	7881	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
3	59	111	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
3	60	115	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
3	2395	7873	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
3	2398	7883	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
2	59	110	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
2	60	114	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
2	2395	7872	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
2	2398	7882	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
1	2397	7879	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd42c2a14b92b128ef217a
1	2400	7889	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd42c2a14b92b128ef217a
1	2680	8821	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	24	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
2	2680	8822	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	25	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
3	2680	8823	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	26	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
4	2680	8824	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	28	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
1	2681	8825	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2ef2a896e469ebeae65d
2	2681	8826	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f24a896e469ebeae65f
3	2681	8827	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f3da896e469ebeae661
4	2681	8828	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f5ba896e469ebeae663
1	2682	8829	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	22	reference	\N	\N	default	67dd42c2a14b92b128ef217a
2	2682	8830	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	21	reference	\N	\N	default	67dd42f7a14b92b128ef217c
2	2584	8502	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	25	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
3	2584	8503	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	26	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
4	2584	8504	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	28	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
1	2585	8505	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2ef2a896e469ebeae65d
2	2585	8506	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f24a896e469ebeae65f
3	2585	8507	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f3da896e469ebeae661
4	2585	8508	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f5ba896e469ebeae663
1	2586	8509	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	22	reference	\N	\N	default	67dd42c2a14b92b128ef217a
2	2586	8510	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	21	reference	\N	\N	default	67dd42f7a14b92b128ef217c
1	2587	8511	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	24	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
2	2587	8512	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	25	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
3	2587	8513	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	26	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
4	2587	8514	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	28	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
1	2588	8515	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2ef2a896e469ebeae65d
2	2588	8516	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f24a896e469ebeae65f
3	2588	8517	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f3da896e469ebeae661
4	2588	8518	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f5ba896e469ebeae663
1	2589	8519	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	22	reference	\N	\N	default	67dd42c2a14b92b128ef217a
2	2589	8520	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	21	reference	\N	\N	default	67dd42f7a14b92b128ef217c
1	2683	8831	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	24	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
2	2683	8832	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	25	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
3	2683	8833	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	26	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
1	2590	8521	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	24	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
2	2590	8522	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	25	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
3	2590	8523	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	26	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
4	2590	8524	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	28	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
1	2591	8525	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2ef2a896e469ebeae65d
2	2591	8526	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f24a896e469ebeae65f
3	2591	8527	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f3da896e469ebeae661
4	2591	8528	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f5ba896e469ebeae663
1	2592	8529	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	22	reference	\N	\N	default	67dd42c2a14b92b128ef217a
2	2592	8530	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	21	reference	\N	\N	default	67dd42f7a14b92b128ef217c
4	2683	8834	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	28	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
1	2593	8531	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	24	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
2	2593	8532	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	25	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
3	2593	8533	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	26	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
4	2593	8534	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	28	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
1	2594	8535	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2ef2a896e469ebeae65d
2	2594	8536	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f24a896e469ebeae65f
3	2594	8537	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f3da896e469ebeae661
4	2594	8538	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f5ba896e469ebeae663
1	2595	8539	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	22	reference	\N	\N	default	67dd42c2a14b92b128ef217a
2	2595	8540	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	21	reference	\N	\N	default	67dd42f7a14b92b128ef217c
1	2684	8835	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2ef2a896e469ebeae65d
2	2684	8836	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f24a896e469ebeae65f
3	2684	8837	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f3da896e469ebeae661
4	2684	8838	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f5ba896e469ebeae663
1	2685	8839	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	22	reference	\N	\N	default	67dd42c2a14b92b128ef217a
2	2685	8840	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	21	reference	\N	\N	default	67dd42f7a14b92b128ef217c
1	2791	9191	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	24	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
2	2791	9192	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	25	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
3	2791	9193	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	26	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
4	2791	9194	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	28	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
1	2792	9195	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2ef2a896e469ebeae65d
2	2792	9196	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f24a896e469ebeae65f
3	2792	9197	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f3da896e469ebeae661
4	2792	9198	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f5ba896e469ebeae663
1	2793	9199	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	22	reference	\N	\N	default	67dd42c2a14b92b128ef217a
2	2793	9200	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	21	reference	\N	\N	default	67dd42f7a14b92b128ef217c
1	2794	9201	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	24	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
2	2794	9202	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	25	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
3	2794	9203	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	26	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
4	2794	9204	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	28	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
1	2795	9205	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2ef2a896e469ebeae65d
2	2795	9206	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f24a896e469ebeae65f
3	2795	9207	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f3da896e469ebeae661
4	2795	9208	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f5ba896e469ebeae663
1	2796	9209	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	22	reference	\N	\N	default	67dd42c2a14b92b128ef217a
2	2796	9210	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	21	reference	\N	\N	default	67dd42f7a14b92b128ef217c
1	2746	9041	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	24	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
2	2746	9042	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	25	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
3	2746	9043	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	26	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
4	2746	9044	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	28	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
1	2747	9045	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2ef2a896e469ebeae65d
2	2747	9046	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f24a896e469ebeae65f
3	2747	9047	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f3da896e469ebeae661
4	2747	9048	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f5ba896e469ebeae663
1	2748	9049	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	22	reference	\N	\N	default	67dd42c2a14b92b128ef217a
2	2748	9050	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	21	reference	\N	\N	default	67dd42f7a14b92b128ef217c
1	2858	9401	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	24	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
2	2858	9402	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	25	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
3	2858	9403	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	26	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
4	2858	9404	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	28	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
1	2859	9405	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2ef2a896e469ebeae65d
2	2859	9406	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f24a896e469ebeae65f
3	2859	9407	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f3da896e469ebeae661
4	2859	9408	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f5ba896e469ebeae663
1	2860	9409	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	22	reference	\N	\N	default	67dd42c2a14b92b128ef217a
2	2860	9410	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	21	reference	\N	\N	default	67dd42f7a14b92b128ef217c
1	2861	9411	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	24	reference	\N	\N	default	67dd2aa8ee9c04239ea1fea3
2	2861	9412	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	25	reference	\N	\N	default	67dd2c29ee9c04239ea1fea5
3	2861	9413	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	26	reference	\N	\N	default	67dd2c5eee9c04239ea1fea7
4	2861	9414	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	28	reference	\N	\N	default	67dd2c7eee9c04239ea1fea9
1	2862	9415	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2ef2a896e469ebeae65d
2	2862	9416	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f24a896e469ebeae65f
3	2862	9417	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f3da896e469ebeae661
4	2862	9418	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default	67dd2f5ba896e469ebeae663
1	2863	9419	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	22	reference	\N	\N	default	67dd42c2a14b92b128ef217a
2	2863	9420	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	21	reference	\N	\N	default	67dd42f7a14b92b128ef217c
\.


--
-- Data for Name: _pages_v_blocks_content_list_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_content_list_locales" ("link_label", "id", "_locale", "_parent_id") FROM stdin;
\N	1	en	113
\N	2	ar	113
\N	3	en	114
\N	4	ar	114
\N	5	en	115
\N	6	ar	115
\N	7	en	116
\N	8	ar	116
\N	6465	en	7871
\N	6466	ar	7871
\N	6467	en	7872
\N	6468	ar	7872
\N	6469	en	7873
\N	6470	ar	7873
\N	6471	en	7874
\N	6472	ar	7874
\N	6473	en	7881
\N	6474	ar	7881
\N	6475	en	7882
\N	6476	ar	7882
\N	6477	en	7883
\N	6478	ar	7883
\N	6479	en	7884
\N	6480	ar	7884
\N	6481	en	7885
\N	6482	ar	7885
\N	6483	en	7886
\N	6484	ar	7886
\N	6485	en	7887
\N	6486	ar	7887
\N	6487	en	7888
\N	6488	ar	7888
\N	6489	en	7889
\N	6490	ar	7889
\N	6491	en	7890
\N	6492	ar	7890
\N	7753	en	8521
\N	7754	ar	8521
\N	7755	en	8522
\N	7756	ar	8522
\N	7757	en	8523
\N	7758	ar	8523
\N	7759	en	8524
\N	7760	ar	8524
\N	7761	en	8525
\N	7762	ar	8525
\N	7763	en	8526
\N	7764	ar	8526
\N	7765	en	8527
\N	7766	ar	8527
\N	7767	en	8528
\N	7768	ar	8528
\N	7769	en	8529
\N	7770	ar	8529
\N	7771	en	8530
\N	7772	ar	8530
\N	7773	en	8531
\N	7774	ar	8531
\N	7775	en	8532
\N	7776	ar	8532
\N	7777	en	8533
\N	7778	ar	8533
\N	7779	en	8534
\N	7780	ar	8534
\N	7781	en	8535
\N	7782	ar	8535
\N	7783	en	8536
\N	7784	ar	8536
\N	7785	en	8537
\N	7786	ar	8537
\N	7787	en	8538
\N	7788	ar	8538
\N	7789	en	8539
\N	7790	ar	8539
\N	7791	en	8540
\N	7792	ar	8540
\N	8813	en	9051
\N	8814	ar	9051
\N	8815	en	9052
\N	8816	ar	9052
\N	8817	en	9053
\N	8818	ar	9053
\N	8819	en	9054
\N	8820	ar	9054
\N	8821	en	9055
\N	8822	ar	9055
\N	8823	en	9056
\N	8824	ar	9056
\N	8825	en	9057
\N	8826	ar	9057
\N	8827	en	9058
\N	8828	ar	9058
\N	8829	en	9059
\N	8830	ar	9059
\N	8831	en	9060
\N	8832	ar	9060
\N	7713	en	8501
\N	7714	ar	8501
\N	7715	en	8502
\N	7716	ar	8502
\N	7717	en	8503
\N	7718	ar	8503
\N	7719	en	8504
\N	7720	ar	8504
\N	7721	en	8505
\N	7722	ar	8505
\N	7723	en	8506
\N	7724	ar	8506
\N	7725	en	8507
\N	7726	ar	8507
\N	7727	en	8508
\N	7728	ar	8508
\N	7729	en	8509
\N	7730	ar	8509
\N	7731	en	8510
\N	7732	ar	8510
\N	7733	en	8511
\N	7734	ar	8511
\N	7735	en	8512
\N	7736	ar	8512
\N	7737	en	8513
\N	7738	ar	8513
\N	7739	en	8514
\N	7740	ar	8514
\N	7741	en	8515
\N	7742	ar	8515
\N	7743	en	8516
\N	7744	ar	8516
\N	7745	en	8517
\N	7746	ar	8517
\N	7747	en	8518
\N	7748	ar	8518
\N	7749	en	8519
\N	7750	ar	8519
\N	7751	en	8520
\N	7752	ar	8520
\N	8353	en	8821
\N	8354	ar	8821
\N	8355	en	8822
\N	8356	ar	8822
\N	8357	en	8823
\N	8358	ar	8823
\N	8359	en	8824
\N	8360	ar	8824
\N	8361	en	8825
\N	8362	ar	8825
\N	8363	en	8826
\N	8364	ar	8826
\N	8365	en	8827
\N	8366	ar	8827
\N	8367	en	8828
\N	8368	ar	8828
\N	8369	en	8829
\N	8370	ar	8829
\N	8371	en	8830
\N	8372	ar	8830
\N	8373	en	8831
\N	8374	ar	8831
\N	8375	en	8832
\N	8376	ar	8832
\N	8377	en	8833
\N	8378	ar	8833
\N	8379	en	8834
\N	8380	ar	8834
\N	8381	en	8835
\N	8382	ar	8835
\N	8383	en	8836
\N	8384	ar	8836
\N	8385	en	8837
\N	8386	ar	8837
\N	8387	en	8838
\N	8388	ar	8838
\N	8389	en	8839
\N	8390	ar	8839
\N	8391	en	8840
\N	8392	ar	8840
\N	9093	en	9191
\N	9094	ar	9191
\N	9095	en	9192
\N	9096	ar	9192
\N	9097	en	9193
\N	9098	ar	9193
\N	9099	en	9194
\N	9100	ar	9194
\N	9101	en	9195
\N	9102	ar	9195
\N	9103	en	9196
\N	9104	ar	9196
\N	9105	en	9197
\N	9106	ar	9197
\N	9107	en	9198
\N	9108	ar	9198
\N	9109	en	9199
\N	9110	ar	9199
\N	9111	en	9200
\N	9112	ar	9200
\N	9113	en	9201
\N	9114	ar	9201
\N	9115	en	9202
\N	9116	ar	9202
\N	9117	en	9203
\N	9118	ar	9203
\N	9119	en	9204
\N	9120	ar	9204
\N	9121	en	9205
\N	9122	ar	9205
\N	9123	en	9206
\N	9124	ar	9206
\N	9125	en	9207
\N	9126	ar	9207
\N	9127	en	9208
\N	9128	ar	9208
\N	9129	en	9209
\N	9130	ar	9209
\N	9131	en	9210
\N	9132	ar	9210
\N	8793	en	9041
\N	8794	ar	9041
\N	8795	en	9042
\N	8796	ar	9042
\N	8797	en	9043
\N	8798	ar	9043
\N	8799	en	9044
\N	8800	ar	9044
\N	8801	en	9045
\N	8802	ar	9045
\N	8803	en	9046
\N	8804	ar	9046
\N	8805	en	9047
\N	8806	ar	9047
\N	8807	en	9048
\N	8808	ar	9048
\N	8809	en	9049
\N	8810	ar	9049
\N	8811	en	9050
\N	8812	ar	9050
\N	9513	en	9401
\N	9514	ar	9401
\N	9515	en	9402
\N	9516	ar	9402
\N	9517	en	9403
\N	9518	ar	9403
\N	9519	en	9404
\N	9520	ar	9404
\N	9521	en	9405
\N	9522	ar	9405
\N	9523	en	9406
\N	9524	ar	9406
\N	9525	en	9407
\N	9526	ar	9407
\N	9527	en	9408
\N	9528	ar	9408
\N	9529	en	9409
\N	9530	ar	9409
\N	9531	en	9410
\N	9532	ar	9410
\N	9533	en	9411
\N	9534	ar	9411
\N	9535	en	9412
\N	9536	ar	9412
\N	9537	en	9413
\N	9538	ar	9413
\N	9539	en	9414
\N	9540	ar	9414
\N	9541	en	9415
\N	9542	ar	9415
\N	9543	en	9416
\N	9544	ar	9416
\N	9545	en	9417
\N	9546	ar	9417
\N	9547	en	9418
\N	9548	ar	9418
\N	9549	en	9419
\N	9550	ar	9419
\N	9551	en	9420
\N	9552	ar	9420
\.


--
-- Data for Name: _pages_v_blocks_cta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_cta" ("_order", "_parent_id", "_path", "id", "rich_text", "_uuid", "block_name") FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_cta_links" ("_order", "_parent_id", "id", "link_type", "link_new_tab", "link_url", "link_appearance", "_uuid") FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_cta_links_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_cta_links_locales" ("link_label", "id", "_locale", "_parent_id") FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_faq_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_faq_block" ("_order", "_parent_id", "_path", "id", "rich_text", "_uuid", "block_name") FROM stdin;
7	4	version.layout	52	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd7bd5fb92c1f4e493e1ac	FAQ
7	5	version.layout	53	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd7bd5fb92c1f4e493e1ac	FAQ
7	8	version.layout	162	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd7bd5fb92c1f4e493e1ac	FAQ
7	16	version.layout	250	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd7bd5fb92c1f4e493e1ac	FAQ
7	17	version.layout	251	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd7bd5fb92c1f4e493e1ac	FAQ
7	6	version.layout	158	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd7bd5fb92c1f4e493e1ac	FAQ
9	6	version.layout	159	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67de7376bf498fe301fc50a1	\N
7	7	version.layout	160	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd7bd5fb92c1f4e493e1ac	FAQ
9	7	version.layout	161	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67de7376bf498fe301fc50a1	\N
7	9	version.layout	163	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd7bd5fb92c1f4e493e1ac	FAQ
7	10	version.layout	192	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd7bd5fb92c1f4e493e1ac	FAQ
7	11	version.layout	193	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd7bd5fb92c1f4e493e1ac	FAQ
7	12	version.layout	214	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd7bd5fb92c1f4e493e1ac	FAQ
7	13	version.layout	215	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd7bd5fb92c1f4e493e1ac	FAQ
7	14	version.layout	229	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd7bd5fb92c1f4e493e1ac	FAQ
7	15	version.layout	230	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd7bd5fb92c1f4e493e1ac	FAQ
\.


--
-- Data for Name: _pages_v_blocks_faq_block_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_faq_block_links" ("_order", "_parent_id", "id", "link_type", "link_new_tab", "link_url", "link_appearance", "_uuid") FROM stdin;
1	52	19	reference	\N	\N	default	67dd7d2389b1617b0d62f87a
1	53	20	reference	\N	\N	default	67dd7d2389b1617b0d62f87a
1	162	100	reference	\N	\N	default	67dd7d2389b1617b0d62f87a
1	163	101	reference	\N	\N	default	67dd7d2389b1617b0d62f87a
1	250	188	reference	\N	\N	default	67dd7d2389b1617b0d62f87a
1	251	189	reference	\N	\N	default	67dd7d2389b1617b0d62f87a
1	192	130	reference	\N	\N	default	67dd7d2389b1617b0d62f87a
1	193	131	reference	\N	\N	default	67dd7d2389b1617b0d62f87a
1	214	152	reference	\N	\N	default	67dd7d2389b1617b0d62f87a
1	215	153	reference	\N	\N	default	67dd7d2389b1617b0d62f87a
1	229	167	reference	\N	\N	default	67dd7d2389b1617b0d62f87a
1	230	168	reference	\N	\N	default	67dd7d2389b1617b0d62f87a
1	158	96	reference	\N	\N	default	67dd7d2389b1617b0d62f87a
1	159	97	reference	\N	\N	default	67dec97c6d639f80d109ef1e
1	160	98	reference	\N	\N	default	67dd7d2389b1617b0d62f87a
1	161	99	reference	\N	\N	default	67dec97c6d639f80d109ef1e
\.


--
-- Data for Name: _pages_v_blocks_faq_block_links_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_faq_block_links_locales" ("link_label", "id", "_locale", "_parent_id") FROM stdin;
تواصل معنا	17	ar	19
تواصل معنا	18	ar	20
تواصل معنا	92	ar	100
تواصل معنا	93	ar	101
تواصل معنا	180	ar	188
تواصل معنا	181	ar	189
تواصل معنا	122	ar	130
تواصل معنا	123	ar	131
تواصل معنا	144	ar	152
تواصل معنا	145	ar	153
تواصل معنا	159	ar	167
تواصل معنا	160	ar	168
تواصل معنا	88	ar	96
تواصل معنا	89	ar	97
تواصل معنا	90	ar	98
تواصل معنا	91	ar	99
\.


--
-- Data for Name: _pages_v_blocks_form_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_form_block" ("_order", "_parent_id", "_path", "id", "form_id", "enable_heading", "rich_text", "_uuid", "block_name") FROM stdin;
8	4	version.layout	117	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd6dcfc06fe6cfef50c242	Form
8	5	version.layout	118	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd6dcfc06fe6cfef50c242	Form
8	16	version.layout	270	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd6dcfc06fe6cfef50c242	Form
8	17	version.layout	271	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd6dcfc06fe6cfef50c242	Form
8	10	version.layout	212	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd6dcfc06fe6cfef50c242	Form
8	14	version.layout	249	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd6dcfc06fe6cfef50c242	Form
8	15	version.layout	250	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd6dcfc06fe6cfef50c242	Form
8	11	version.layout	213	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd6dcfc06fe6cfef50c242	Form
8	6	version.layout	180	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd6dcfc06fe6cfef50c242	Form
8	7	version.layout	181	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd6dcfc06fe6cfef50c242	Form
8	13	version.layout	235	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd6dcfc06fe6cfef50c242	Form
8	12	version.layout	234	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd6dcfc06fe6cfef50c242	Form
8	8	version.layout	182	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd6dcfc06fe6cfef50c242	Form
8	9	version.layout	183	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	67dd6dcfc06fe6cfef50c242	Form
\.


--
-- Data for Name: _pages_v_blocks_logo_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_logo_block" ("_order", "_parent_id", "_path", "id", "caption", "_uuid", "block_name") FROM stdin;
3	4	version.layout	670	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd440da14b92b128ef217e	PARTNERS
3	5	version.layout	671	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd440da14b92b128ef217e	PARTNERS
3	10	version.layout	765	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd440da14b92b128ef217e	PARTNERS
3	11	version.layout	766	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd440da14b92b128ef217e	PARTNERS
3	12	version.layout	787	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd440da14b92b128ef217e	PARTNERS
3	13	version.layout	788	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd440da14b92b128ef217e	PARTNERS
3	6	version.layout	733	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd440da14b92b128ef217e	PARTNERS
3	7	version.layout	734	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd440da14b92b128ef217e	PARTNERS
3	8	version.layout	735	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd440da14b92b128ef217e	PARTNERS
3	9	version.layout	736	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd440da14b92b128ef217e	PARTNERS
3	14	version.layout	802	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd440da14b92b128ef217e	PARTNERS
3	15	version.layout	803	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd440da14b92b128ef217e	PARTNERS
3	16	version.layout	823	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd440da14b92b128ef217e	PARTNERS
3	17	version.layout	824	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd440da14b92b128ef217e	PARTNERS
\.


--
-- Data for Name: _pages_v_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_media_block" ("_order", "_parent_id", "_path", "id", "media_id", "_uuid", "block_name") FROM stdin;
\.


--
-- Data for Name: _pages_v_blocks_pricing_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_pricing_block" ("_order", "_parent_id", "_path", "id", "rich_text", "_uuid", "block_name", "base_features_tag", "base_features_heading", "base_features_content", "additional_features_tag", "additional_features_heading", "additional_features_content", "tag") FROM stdin;
6	4	version.layout	526	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd52363656a85f842b4237	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
6	5	version.layout	527	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd52363656a85f842b4237	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
6	16	version.layout	679	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd52363656a85f842b4237	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
6	17	version.layout	680	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd52363656a85f842b4237	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
6	10	version.layout	621	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd52363656a85f842b4237	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
6	13	version.layout	644	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd52363656a85f842b4237	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
6	11	version.layout	622	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd52363656a85f842b4237	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
6	12	version.layout	643	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd52363656a85f842b4237	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
6	6	version.layout	589	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd52363656a85f842b4237	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
6	7	version.layout	590	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd52363656a85f842b4237	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
6	8	version.layout	591	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd52363656a85f842b4237	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
6	9	version.layout	592	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd52363656a85f842b4237	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
6	14	version.layout	658	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd52363656a85f842b4237	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
6	15	version.layout	659	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	67dd52363656a85f842b4237	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
\.


--
-- Data for Name: _pages_v_blocks_pricing_block_additional_features_features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_pricing_block_additional_features_features" ("_order", "_parent_id", "id", "icon", "feature", "_uuid", "description") FROM stdin;
1	526	1840	add-circle-line	اوبتمايز بلس	67dd542b26f6d0eda1519c82	لإدارة الحملات الإعلانية
2	526	1841	brush-ai-line	ثيم إيثار الفخم	67dd56dd1a2c7d6139c3374b	تفعيل مجاني لثيم إيثار المطور
3	526	1842	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	67dd573f1a2c7d6139c3374f	\N
4	526	1843	megaphone-line	قنوات ترويج إضافية	67dd585e1a2c7d6139c33751	قيمة ترويج إضافية بالشراكة مع المنصات
5	526	1844	customer-service-line	استشارات مع خبراء	67dd58831a2c7d6139c33753	لتطوير عرض الفرص والمنصة
6	526	1845	calendar-todo-line	الاستقطاع الشهري	67dd59211a2c7d6139c33755	متجرك شغال بدون اشتراك
1	527	1846	add-circle-line	اوبتمايز بلس	67dd542b26f6d0eda1519c82	لإدارة الحملات الإعلانية
2	527	1847	brush-ai-line	ثيم إيثار الفخم	67dd56dd1a2c7d6139c3374b	تفعيل مجاني لثيم إيثار المطور
3	527	1848	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	67dd573f1a2c7d6139c3374f	\N
4	527	1849	megaphone-line	قنوات ترويج إضافية	67dd585e1a2c7d6139c33751	قيمة ترويج إضافية بالشراكة مع المنصات
5	527	1850	customer-service-line	استشارات مع خبراء	67dd58831a2c7d6139c33753	لتطوير عرض الفرص والمنصة
6	527	1851	calendar-todo-line	الاستقطاع الشهري	67dd59211a2c7d6139c33755	متجرك شغال بدون اشتراك
1	621	2410	add-circle-line	اوبتمايز بلس	67dd542b26f6d0eda1519c82	لإدارة الحملات الإعلانية
2	621	2411	brush-ai-line	ثيم إيثار الفخم	67dd56dd1a2c7d6139c3374b	تفعيل مجاني لثيم إيثار المطور
3	621	2412	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	67dd573f1a2c7d6139c3374f	\N
4	621	2413	megaphone-line	قنوات ترويج إضافية	67dd585e1a2c7d6139c33751	قيمة ترويج إضافية بالشراكة مع المنصات
5	621	2414	customer-service-line	استشارات مع خبراء	67dd58831a2c7d6139c33753	لتطوير عرض الفرص والمنصة
6	621	2415	calendar-todo-line	الاستقطاع الشهري	67dd59211a2c7d6139c33755	متجرك شغال بدون اشتراك
1	589	2218	add-circle-line	اوبتمايز بلس	67dd542b26f6d0eda1519c82	لإدارة الحملات الإعلانية
2	589	2219	brush-ai-line	ثيم إيثار الفخم	67dd56dd1a2c7d6139c3374b	تفعيل مجاني لثيم إيثار المطور
3	589	2220	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	67dd573f1a2c7d6139c3374f	\N
4	589	2221	megaphone-line	قنوات ترويج إضافية	67dd585e1a2c7d6139c33751	قيمة ترويج إضافية بالشراكة مع المنصات
5	589	2222	customer-service-line	استشارات مع خبراء	67dd58831a2c7d6139c33753	لتطوير عرض الفرص والمنصة
6	589	2223	calendar-todo-line	الاستقطاع الشهري	67dd59211a2c7d6139c33755	متجرك شغال بدون اشتراك
1	590	2224	add-circle-line	اوبتمايز بلس	67dd542b26f6d0eda1519c82	لإدارة الحملات الإعلانية
2	590	2225	brush-ai-line	ثيم إيثار الفخم	67dd56dd1a2c7d6139c3374b	تفعيل مجاني لثيم إيثار المطور
3	590	2226	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	67dd573f1a2c7d6139c3374f	\N
4	590	2227	megaphone-line	قنوات ترويج إضافية	67dd585e1a2c7d6139c33751	قيمة ترويج إضافية بالشراكة مع المنصات
5	590	2228	customer-service-line	استشارات مع خبراء	67dd58831a2c7d6139c33753	لتطوير عرض الفرص والمنصة
6	590	2229	calendar-todo-line	الاستقطاع الشهري	67dd59211a2c7d6139c33755	متجرك شغال بدون اشتراك
1	591	2230	add-circle-line	اوبتمايز بلس	67dd542b26f6d0eda1519c82	لإدارة الحملات الإعلانية
2	591	2231	brush-ai-line	ثيم إيثار الفخم	67dd56dd1a2c7d6139c3374b	تفعيل مجاني لثيم إيثار المطور
3	591	2232	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	67dd573f1a2c7d6139c3374f	\N
4	591	2233	megaphone-line	قنوات ترويج إضافية	67dd585e1a2c7d6139c33751	قيمة ترويج إضافية بالشراكة مع المنصات
5	591	2234	customer-service-line	استشارات مع خبراء	67dd58831a2c7d6139c33753	لتطوير عرض الفرص والمنصة
6	591	2235	calendar-todo-line	الاستقطاع الشهري	67dd59211a2c7d6139c33755	متجرك شغال بدون اشتراك
1	592	2236	add-circle-line	اوبتمايز بلس	67dd542b26f6d0eda1519c82	لإدارة الحملات الإعلانية
2	592	2237	brush-ai-line	ثيم إيثار الفخم	67dd56dd1a2c7d6139c3374b	تفعيل مجاني لثيم إيثار المطور
3	592	2238	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	67dd573f1a2c7d6139c3374f	\N
4	592	2239	megaphone-line	قنوات ترويج إضافية	67dd585e1a2c7d6139c33751	قيمة ترويج إضافية بالشراكة مع المنصات
5	592	2240	customer-service-line	استشارات مع خبراء	67dd58831a2c7d6139c33753	لتطوير عرض الفرص والمنصة
6	592	2241	calendar-todo-line	الاستقطاع الشهري	67dd59211a2c7d6139c33755	متجرك شغال بدون اشتراك
1	622	2416	add-circle-line	اوبتمايز بلس	67dd542b26f6d0eda1519c82	لإدارة الحملات الإعلانية
2	622	2417	brush-ai-line	ثيم إيثار الفخم	67dd56dd1a2c7d6139c3374b	تفعيل مجاني لثيم إيثار المطور
3	622	2418	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	67dd573f1a2c7d6139c3374f	\N
4	622	2419	megaphone-line	قنوات ترويج إضافية	67dd585e1a2c7d6139c33751	قيمة ترويج إضافية بالشراكة مع المنصات
5	622	2420	customer-service-line	استشارات مع خبراء	67dd58831a2c7d6139c33753	لتطوير عرض الفرص والمنصة
6	622	2421	calendar-todo-line	الاستقطاع الشهري	67dd59211a2c7d6139c33755	متجرك شغال بدون اشتراك
1	644	2548	add-circle-line	اوبتمايز بلس	67dd542b26f6d0eda1519c82	لإدارة الحملات الإعلانية
2	644	2549	brush-ai-line	ثيم إيثار الفخم	67dd56dd1a2c7d6139c3374b	تفعيل مجاني لثيم إيثار المطور
3	644	2550	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	67dd573f1a2c7d6139c3374f	\N
4	644	2551	megaphone-line	قنوات ترويج إضافية	67dd585e1a2c7d6139c33751	قيمة ترويج إضافية بالشراكة مع المنصات
5	644	2552	customer-service-line	استشارات مع خبراء	67dd58831a2c7d6139c33753	لتطوير عرض الفرص والمنصة
6	644	2553	calendar-todo-line	الاستقطاع الشهري	67dd59211a2c7d6139c33755	متجرك شغال بدون اشتراك
6	679	2763	calendar-todo-line	الاستقطاع الشهري	67dd59211a2c7d6139c33755	متجرك شغال بدون اشتراك
1	680	2764	add-circle-line	اوبتمايز بلس	67dd542b26f6d0eda1519c82	لإدارة الحملات الإعلانية
2	680	2765	brush-ai-line	ثيم إيثار الفخم	67dd56dd1a2c7d6139c3374b	تفعيل مجاني لثيم إيثار المطور
3	680	2766	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	67dd573f1a2c7d6139c3374f	\N
4	680	2767	megaphone-line	قنوات ترويج إضافية	67dd585e1a2c7d6139c33751	قيمة ترويج إضافية بالشراكة مع المنصات
5	680	2768	customer-service-line	استشارات مع خبراء	67dd58831a2c7d6139c33753	لتطوير عرض الفرص والمنصة
1	643	2542	add-circle-line	اوبتمايز بلس	67dd542b26f6d0eda1519c82	لإدارة الحملات الإعلانية
2	643	2543	brush-ai-line	ثيم إيثار الفخم	67dd56dd1a2c7d6139c3374b	تفعيل مجاني لثيم إيثار المطور
3	643	2544	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	67dd573f1a2c7d6139c3374f	\N
4	643	2545	megaphone-line	قنوات ترويج إضافية	67dd585e1a2c7d6139c33751	قيمة ترويج إضافية بالشراكة مع المنصات
5	643	2546	customer-service-line	استشارات مع خبراء	67dd58831a2c7d6139c33753	لتطوير عرض الفرص والمنصة
6	643	2547	calendar-todo-line	الاستقطاع الشهري	67dd59211a2c7d6139c33755	متجرك شغال بدون اشتراك
1	658	2632	add-circle-line	اوبتمايز بلس	67dd542b26f6d0eda1519c82	لإدارة الحملات الإعلانية
2	658	2633	brush-ai-line	ثيم إيثار الفخم	67dd56dd1a2c7d6139c3374b	تفعيل مجاني لثيم إيثار المطور
3	658	2634	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	67dd573f1a2c7d6139c3374f	\N
4	658	2635	megaphone-line	قنوات ترويج إضافية	67dd585e1a2c7d6139c33751	قيمة ترويج إضافية بالشراكة مع المنصات
5	658	2636	customer-service-line	استشارات مع خبراء	67dd58831a2c7d6139c33753	لتطوير عرض الفرص والمنصة
6	658	2637	calendar-todo-line	الاستقطاع الشهري	67dd59211a2c7d6139c33755	متجرك شغال بدون اشتراك
1	659	2638	add-circle-line	اوبتمايز بلس	67dd542b26f6d0eda1519c82	لإدارة الحملات الإعلانية
2	659	2639	brush-ai-line	ثيم إيثار الفخم	67dd56dd1a2c7d6139c3374b	تفعيل مجاني لثيم إيثار المطور
3	659	2640	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	67dd573f1a2c7d6139c3374f	\N
4	659	2641	megaphone-line	قنوات ترويج إضافية	67dd585e1a2c7d6139c33751	قيمة ترويج إضافية بالشراكة مع المنصات
5	659	2642	customer-service-line	استشارات مع خبراء	67dd58831a2c7d6139c33753	لتطوير عرض الفرص والمنصة
6	659	2643	calendar-todo-line	الاستقطاع الشهري	67dd59211a2c7d6139c33755	متجرك شغال بدون اشتراك
1	679	2758	add-circle-line	اوبتمايز بلس	67dd542b26f6d0eda1519c82	لإدارة الحملات الإعلانية
2	679	2759	brush-ai-line	ثيم إيثار الفخم	67dd56dd1a2c7d6139c3374b	تفعيل مجاني لثيم إيثار المطور
3	679	2760	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	67dd573f1a2c7d6139c3374f	\N
4	679	2761	megaphone-line	قنوات ترويج إضافية	67dd585e1a2c7d6139c33751	قيمة ترويج إضافية بالشراكة مع المنصات
5	679	2762	customer-service-line	استشارات مع خبراء	67dd58831a2c7d6139c33753	لتطوير عرض الفرص والمنصة
6	680	2769	calendar-todo-line	الاستقطاع الشهري	67dd59211a2c7d6139c33755	متجرك شغال بدون اشتراك
\.


--
-- Data for Name: _pages_v_blocks_pricing_block_base_features_features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_pricing_block_base_features_features" ("_order", "_parent_id", "id", "_uuid", "icon", "feature", "description") FROM stdin;
1	526	1864	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	526	1865	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	526	1866	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	526	1867	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
1	527	1868	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	527	1869	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	527	1870	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	527	1871	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
1	591	2124	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	591	2125	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	591	2126	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	591	2127	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
1	592	2128	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	592	2129	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	592	2130	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	592	2131	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
1	589	2116	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	589	2117	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	589	2118	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	589	2119	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
1	590	2120	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	590	2121	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	590	2122	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	590	2123	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
1	658	2392	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	658	2393	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	658	2394	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	658	2395	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
1	659	2396	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	659	2397	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	659	2398	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	659	2399	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
1	643	2332	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	643	2333	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	643	2334	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	643	2335	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
1	644	2336	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	644	2337	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	644	2338	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	644	2339	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
1	621	2244	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	621	2245	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	621	2246	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	621	2247	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
1	622	2248	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	622	2249	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	622	2250	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	622	2251	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
1	679	2476	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	679	2477	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	679	2478	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	679	2479	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
1	680	2480	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	680	2481	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	680	2482	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	680	2483	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
\.


--
-- Data for Name: _pages_v_blocks_stats_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_stats_block" ("_order", "_parent_id", "_path", "id", "caption", "_uuid", "block_name") FROM stdin;
4	4	version.layout	599	\N	67dd462aa14b92b128ef218e	STATS
4	5	version.layout	600	\N	67dd462aa14b92b128ef218e	STATS
4	16	version.layout	752	\N	67dd462aa14b92b128ef218e	STATS
4	17	version.layout	753	\N	67dd462aa14b92b128ef218e	STATS
4	10	version.layout	694	\N	67dd462aa14b92b128ef218e	STATS
4	11	version.layout	695	\N	67dd462aa14b92b128ef218e	STATS
4	12	version.layout	716	\N	67dd462aa14b92b128ef218e	STATS
4	13	version.layout	717	\N	67dd462aa14b92b128ef218e	STATS
4	6	version.layout	662	\N	67dd462aa14b92b128ef218e	STATS
4	7	version.layout	663	\N	67dd462aa14b92b128ef218e	STATS
4	8	version.layout	664	\N	67dd462aa14b92b128ef218e	STATS
4	9	version.layout	665	\N	67dd462aa14b92b128ef218e	STATS
4	14	version.layout	731	\N	67dd462aa14b92b128ef218e	STATS
4	15	version.layout	732	\N	67dd462aa14b92b128ef218e	STATS
\.


--
-- Data for Name: _pages_v_blocks_stats_block_list; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_blocks_stats_block_list" ("_order", "_parent_id", "id", "number", "description", "_uuid") FROM stdin;
1	599	1745	+1200	جمعية استفادت من زاد منذ 2022	67dd4630a14b92b128ef2190
2	599	1746	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها	67dd4641a14b92b128ef2192
3	599	1747	+6 مليون محسن	تبرع عن طريق منصات زاد	67dd467fa14b92b128ef2194
1	600	1748	+1200	جمعية استفادت من زاد منذ 2022	67dd4630a14b92b128ef2190
2	600	1749	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها	67dd4641a14b92b128ef2192
3	600	1750	+6 مليون محسن	تبرع عن طريق منصات زاد	67dd467fa14b92b128ef2194
1	662	1934	+1200	جمعية استفادت من زاد منذ 2022	67dd4630a14b92b128ef2190
2	662	1935	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها	67dd4641a14b92b128ef2192
3	662	1936	+6 مليون محسن	تبرع عن طريق منصات زاد	67dd467fa14b92b128ef2194
1	663	1937	+1200	جمعية استفادت من زاد منذ 2022	67dd4630a14b92b128ef2190
2	663	1938	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها	67dd4641a14b92b128ef2192
3	663	1939	+6 مليون محسن	تبرع عن طريق منصات زاد	67dd467fa14b92b128ef2194
1	664	1940	+1200	جمعية استفادت من زاد منذ 2022	67dd4630a14b92b128ef2190
2	664	1941	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها	67dd4641a14b92b128ef2192
3	664	1942	+6 مليون محسن	تبرع عن طريق منصات زاد	67dd467fa14b92b128ef2194
1	665	1943	+1200	جمعية استفادت من زاد منذ 2022	67dd4630a14b92b128ef2190
2	665	1944	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها	67dd4641a14b92b128ef2192
3	665	1945	+6 مليون محسن	تبرع عن طريق منصات زاد	67dd467fa14b92b128ef2194
1	731	2141	+1200	جمعية استفادت من زاد منذ 2022	67dd4630a14b92b128ef2190
2	731	2142	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها	67dd4641a14b92b128ef2192
3	731	2143	+6 مليون محسن	تبرع عن طريق منصات زاد	67dd467fa14b92b128ef2194
1	732	2144	+1200	جمعية استفادت من زاد منذ 2022	67dd4630a14b92b128ef2190
2	732	2145	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها	67dd4641a14b92b128ef2192
3	732	2146	+6 مليون محسن	تبرع عن طريق منصات زاد	67dd467fa14b92b128ef2194
1	716	2096	+1200	جمعية استفادت من زاد منذ 2022	67dd4630a14b92b128ef2190
2	716	2097	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها	67dd4641a14b92b128ef2192
3	716	2098	+6 مليون محسن	تبرع عن طريق منصات زاد	67dd467fa14b92b128ef2194
1	717	2099	+1200	جمعية استفادت من زاد منذ 2022	67dd4630a14b92b128ef2190
2	717	2100	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها	67dd4641a14b92b128ef2192
3	717	2101	+6 مليون محسن	تبرع عن طريق منصات زاد	67dd467fa14b92b128ef2194
1	694	2030	+1200	جمعية استفادت من زاد منذ 2022	67dd4630a14b92b128ef2190
2	694	2031	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها	67dd4641a14b92b128ef2192
3	694	2032	+6 مليون محسن	تبرع عن طريق منصات زاد	67dd467fa14b92b128ef2194
1	695	2033	+1200	جمعية استفادت من زاد منذ 2022	67dd4630a14b92b128ef2190
2	695	2034	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها	67dd4641a14b92b128ef2192
3	695	2035	+6 مليون محسن	تبرع عن طريق منصات زاد	67dd467fa14b92b128ef2194
1	752	2204	+1200	جمعية استفادت من زاد منذ 2022	67dd4630a14b92b128ef2190
2	752	2205	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها	67dd4641a14b92b128ef2192
3	752	2206	+6 مليون محسن	تبرع عن طريق منصات زاد	67dd467fa14b92b128ef2194
1	753	2207	+1200	جمعية استفادت من زاد منذ 2022	67dd4630a14b92b128ef2190
2	753	2208	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها	67dd4641a14b92b128ef2192
3	753	2209	+6 مليون محسن	تبرع عن طريق منصات زاد	67dd467fa14b92b128ef2194
\.


--
-- Data for Name: _pages_v_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_locales" ("version_hero_rich_text", "version_hero_media_id", "version_meta_title", "version_meta_image_id", "version_meta_description", "id", "_locale", "_parent_id") FROM stdin;
\N	\N	\N	\N	\N	1	en	1
\N	\N	\N	\N	\N	2	ar	1
\N	\N	\N	\N	\N	171	en	3
\N	\N	\N	\N	\N	1917	en	8
\N	\N	\N	\N	\N	169	en	2
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	23	\N	\N	\N	1918	ar	8
\N	\N	\N	\N	\N	1787	en	4
\N	\N	\N	\N	\N	1919	en	9
\N	\N	\N	\N	\N	1789	en	5
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	23	\N	\N	\N	1920	ar	9
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	\N	\N	\N	172	ar	3
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	\N	\N	\N	170	ar	2
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	\N	\N	\N	1788	ar	4
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	\N	\N	\N	1790	ar	5
\N	\N	\N	\N	\N	1913	en	6
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	23	\N	\N	\N	1914	ar	6
\N	\N	\N	\N	\N	1915	en	7
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	23	\N	\N	\N	1916	ar	7
\N	\N	\N	\N	\N	2021	en	12
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "start", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	23	\N	\N	\N	2022	ar	12
\N	\N	\N	\N	\N	2023	en	13
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "start", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	23	\N	\N	\N	2024	ar	13
\N	\N	\N	\N	\N	1977	en	10
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	23	\N	\N	\N	1978	ar	10
\N	\N	\N	\N	\N	1979	en	11
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	23	\N	\N	\N	1980	ar	11
\N	\N	\N	\N	\N	2051	en	14
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	23	\N	\N	\N	2052	ar	14
\N	\N	\N	\N	\N	2053	en	15
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	23	\N	\N	\N	2054	ar	15
\N	\N	\N	\N	\N	2093	en	16
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	23	Home | منصة زاد	\N	\N	2094	ar	16
\N	\N	\N	\N	\N	2095	en	17
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	23	Home | منصة زاد	\N	\N	2096	ar	17
\.


--
-- Data for Name: _pages_v_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_rels" ("id", "order", "parent_id", "path", "pages_id", "posts_id", "categories_id", "faq_id", "media_id") FROM stdin;
65	\N	2	version.hero.links.0.link.reference	1	\N	\N	\N	\N
66	\N	3	version.hero.links.0.link.reference	1	\N	\N	\N	\N
994	1	4	version.layout.7.faqs	\N	\N	\N	1	\N
995	2	4	version.layout.7.faqs	\N	\N	\N	2	\N
996	3	4	version.layout.7.faqs	\N	\N	\N	3	\N
997	4	4	version.layout.7.faqs	\N	\N	\N	4	\N
998	5	4	version.layout.7.faqs	\N	\N	\N	5	\N
999	6	4	version.layout.7.faqs	\N	\N	\N	6	\N
1000	7	4	version.layout.7.faqs	\N	\N	\N	7	\N
1163	\N	4	version.hero.links.0.link.reference	1	\N	\N	\N	\N
1164	\N	4	version.layout.6.links.0.link.reference	1	\N	\N	\N	\N
1165	1	4	version.layout.6.faqs	\N	\N	\N	1	\N
1166	2	4	version.layout.6.faqs	\N	\N	\N	2	\N
1167	3	4	version.layout.6.faqs	\N	\N	\N	3	\N
1168	4	4	version.layout.6.faqs	\N	\N	\N	4	\N
1169	5	4	version.layout.6.faqs	\N	\N	\N	5	\N
1170	6	4	version.layout.6.faqs	\N	\N	\N	6	\N
1171	7	4	version.layout.6.faqs	\N	\N	\N	7	\N
1172	\N	5	version.hero.links.0.link.reference	1	\N	\N	\N	\N
1173	\N	5	version.layout.6.links.0.link.reference	1	\N	\N	\N	\N
1174	1	5	version.layout.6.faqs	\N	\N	\N	1	\N
1175	2	5	version.layout.6.faqs	\N	\N	\N	2	\N
1176	3	5	version.layout.6.faqs	\N	\N	\N	3	\N
1177	4	5	version.layout.6.faqs	\N	\N	\N	4	\N
1178	5	5	version.layout.6.faqs	\N	\N	\N	5	\N
1179	6	5	version.layout.6.faqs	\N	\N	\N	6	\N
1180	7	5	version.layout.6.faqs	\N	\N	\N	7	\N
2094	\N	8	version.hero.links.0.link.reference	1	\N	\N	\N	\N
2095	1	8	version.layout.2.logos	\N	\N	\N	\N	15
2096	2	8	version.layout.2.logos	\N	\N	\N	\N	16
2097	3	8	version.layout.2.logos	\N	\N	\N	\N	17
2098	4	8	version.layout.2.logos	\N	\N	\N	\N	18
2099	5	8	version.layout.2.logos	\N	\N	\N	\N	19
2100	6	8	version.layout.2.logos	\N	\N	\N	\N	20
2101	\N	8	version.layout.6.links.0.link.reference	1	\N	\N	\N	\N
2102	1	8	version.layout.6.faqs	\N	\N	\N	1	\N
2103	2	8	version.layout.6.faqs	\N	\N	\N	2	\N
2104	3	8	version.layout.6.faqs	\N	\N	\N	3	\N
2105	4	8	version.layout.6.faqs	\N	\N	\N	4	\N
2106	5	8	version.layout.6.faqs	\N	\N	\N	5	\N
2107	6	8	version.layout.6.faqs	\N	\N	\N	6	\N
2108	7	8	version.layout.6.faqs	\N	\N	\N	7	\N
2109	\N	9	version.hero.links.0.link.reference	1	\N	\N	\N	\N
2110	1	9	version.layout.2.logos	\N	\N	\N	\N	15
2111	2	9	version.layout.2.logos	\N	\N	\N	\N	16
2112	3	9	version.layout.2.logos	\N	\N	\N	\N	17
2113	4	9	version.layout.2.logos	\N	\N	\N	\N	18
2114	5	9	version.layout.2.logos	\N	\N	\N	\N	19
2115	6	9	version.layout.2.logos	\N	\N	\N	\N	20
2116	\N	9	version.layout.6.links.0.link.reference	1	\N	\N	\N	\N
2048	\N	6	version.hero.links.0.link.reference	1	\N	\N	\N	\N
2049	1	6	version.layout.2.logos	\N	\N	\N	\N	15
2050	2	6	version.layout.2.logos	\N	\N	\N	\N	16
2051	3	6	version.layout.2.logos	\N	\N	\N	\N	17
2052	4	6	version.layout.2.logos	\N	\N	\N	\N	18
2053	5	6	version.layout.2.logos	\N	\N	\N	\N	19
2054	6	6	version.layout.2.logos	\N	\N	\N	\N	20
2055	\N	6	version.layout.6.links.0.link.reference	1	\N	\N	\N	\N
2056	1	6	version.layout.6.faqs	\N	\N	\N	1	\N
2057	2	6	version.layout.6.faqs	\N	\N	\N	2	\N
2058	3	6	version.layout.6.faqs	\N	\N	\N	3	\N
2059	4	6	version.layout.6.faqs	\N	\N	\N	4	\N
2060	5	6	version.layout.6.faqs	\N	\N	\N	5	\N
2061	6	6	version.layout.6.faqs	\N	\N	\N	6	\N
2062	7	6	version.layout.6.faqs	\N	\N	\N	7	\N
2063	\N	6	version.layout.8.links.0.link.reference	1	\N	\N	\N	\N
2064	1	6	version.layout.8.faqs	\N	\N	\N	1	\N
2065	2	6	version.layout.8.faqs	\N	\N	\N	2	\N
2066	3	6	version.layout.8.faqs	\N	\N	\N	3	\N
2067	4	6	version.layout.8.faqs	\N	\N	\N	4	\N
2068	5	6	version.layout.8.faqs	\N	\N	\N	5	\N
2069	6	6	version.layout.8.faqs	\N	\N	\N	6	\N
2070	7	6	version.layout.8.faqs	\N	\N	\N	7	\N
2071	\N	7	version.hero.links.0.link.reference	1	\N	\N	\N	\N
2072	1	7	version.layout.2.logos	\N	\N	\N	\N	15
2073	2	7	version.layout.2.logos	\N	\N	\N	\N	16
2074	3	7	version.layout.2.logos	\N	\N	\N	\N	17
2075	4	7	version.layout.2.logos	\N	\N	\N	\N	18
2076	5	7	version.layout.2.logos	\N	\N	\N	\N	19
2077	6	7	version.layout.2.logos	\N	\N	\N	\N	20
2078	\N	7	version.layout.6.links.0.link.reference	1	\N	\N	\N	\N
2079	1	7	version.layout.6.faqs	\N	\N	\N	1	\N
2080	2	7	version.layout.6.faqs	\N	\N	\N	2	\N
2081	3	7	version.layout.6.faqs	\N	\N	\N	3	\N
2082	4	7	version.layout.6.faqs	\N	\N	\N	4	\N
2083	5	7	version.layout.6.faqs	\N	\N	\N	5	\N
2084	6	7	version.layout.6.faqs	\N	\N	\N	6	\N
2085	7	7	version.layout.6.faqs	\N	\N	\N	7	\N
2086	\N	7	version.layout.8.links.0.link.reference	1	\N	\N	\N	\N
2087	1	7	version.layout.8.faqs	\N	\N	\N	1	\N
2088	2	7	version.layout.8.faqs	\N	\N	\N	2	\N
2089	3	7	version.layout.8.faqs	\N	\N	\N	3	\N
2090	4	7	version.layout.8.faqs	\N	\N	\N	4	\N
2091	5	7	version.layout.8.faqs	\N	\N	\N	5	\N
2092	6	7	version.layout.8.faqs	\N	\N	\N	6	\N
2093	7	7	version.layout.8.faqs	\N	\N	\N	7	\N
2117	1	9	version.layout.6.faqs	\N	\N	\N	1	\N
2118	2	9	version.layout.6.faqs	\N	\N	\N	2	\N
2119	3	9	version.layout.6.faqs	\N	\N	\N	3	\N
2120	4	9	version.layout.6.faqs	\N	\N	\N	4	\N
2121	5	9	version.layout.6.faqs	\N	\N	\N	5	\N
2122	6	9	version.layout.6.faqs	\N	\N	\N	6	\N
2123	7	9	version.layout.6.faqs	\N	\N	\N	7	\N
3109	\N	13	version.hero.links.0.link.reference	1	\N	\N	\N	\N
3110	1	13	version.hero.logos	\N	\N	\N	\N	29
3111	2	13	version.hero.logos	\N	\N	\N	\N	34
3112	3	13	version.hero.logos	\N	\N	\N	\N	33
3113	4	13	version.hero.logos	\N	\N	\N	\N	30
3114	5	13	version.hero.logos	\N	\N	\N	\N	31
3115	6	13	version.hero.logos	\N	\N	\N	\N	32
2675	1	12	version.layout.3.logos	\N	\N	\N	\N	15
2676	2	12	version.layout.3.logos	\N	\N	\N	\N	16
2677	3	12	version.layout.3.logos	\N	\N	\N	\N	17
2678	4	12	version.layout.3.logos	\N	\N	\N	\N	18
2679	5	12	version.layout.3.logos	\N	\N	\N	\N	19
2680	6	12	version.layout.3.logos	\N	\N	\N	\N	20
2681	\N	12	version.layout.7.links.0.link.reference	1	\N	\N	\N	\N
2682	1	12	version.layout.7.faqs	\N	\N	\N	1	\N
2683	2	12	version.layout.7.faqs	\N	\N	\N	2	\N
2684	3	12	version.layout.7.faqs	\N	\N	\N	3	\N
2685	4	12	version.layout.7.faqs	\N	\N	\N	4	\N
2686	5	12	version.layout.7.faqs	\N	\N	\N	5	\N
2687	6	12	version.layout.7.faqs	\N	\N	\N	6	\N
2688	7	12	version.layout.7.faqs	\N	\N	\N	7	\N
3116	1	13	version.layout.2.logos	\N	\N	\N	\N	15
3117	2	13	version.layout.2.logos	\N	\N	\N	\N	16
3118	3	13	version.layout.2.logos	\N	\N	\N	\N	17
3119	4	13	version.layout.2.logos	\N	\N	\N	\N	18
3120	5	13	version.layout.2.logos	\N	\N	\N	\N	19
3121	6	13	version.layout.2.logos	\N	\N	\N	\N	20
3122	\N	13	version.layout.6.links.0.link.reference	1	\N	\N	\N	\N
3123	1	13	version.layout.6.faqs	\N	\N	\N	1	\N
3124	2	13	version.layout.6.faqs	\N	\N	\N	2	\N
3125	3	13	version.layout.6.faqs	\N	\N	\N	3	\N
3126	4	13	version.layout.6.faqs	\N	\N	\N	4	\N
3127	5	13	version.layout.6.faqs	\N	\N	\N	5	\N
3128	6	13	version.layout.6.faqs	\N	\N	\N	6	\N
3129	7	13	version.layout.6.faqs	\N	\N	\N	7	\N
2626	\N	10	version.hero.links.0.link.reference	1	\N	\N	\N	\N
2627	1	10	version.hero.logos	\N	\N	\N	\N	29
2628	2	10	version.hero.logos	\N	\N	\N	\N	34
2629	3	10	version.hero.logos	\N	\N	\N	\N	33
2630	4	10	version.hero.logos	\N	\N	\N	\N	30
2631	5	10	version.hero.logos	\N	\N	\N	\N	31
2632	6	10	version.hero.logos	\N	\N	\N	\N	32
2633	1	10	version.layout.2.logos	\N	\N	\N	\N	15
2634	2	10	version.layout.2.logos	\N	\N	\N	\N	16
2635	3	10	version.layout.2.logos	\N	\N	\N	\N	17
2636	4	10	version.layout.2.logos	\N	\N	\N	\N	18
2637	5	10	version.layout.2.logos	\N	\N	\N	\N	19
2638	6	10	version.layout.2.logos	\N	\N	\N	\N	20
2639	\N	10	version.layout.6.links.0.link.reference	1	\N	\N	\N	\N
2640	1	10	version.layout.6.faqs	\N	\N	\N	1	\N
2641	2	10	version.layout.6.faqs	\N	\N	\N	2	\N
2642	3	10	version.layout.6.faqs	\N	\N	\N	3	\N
2643	4	10	version.layout.6.faqs	\N	\N	\N	4	\N
2644	5	10	version.layout.6.faqs	\N	\N	\N	5	\N
2645	6	10	version.layout.6.faqs	\N	\N	\N	6	\N
2646	7	10	version.layout.6.faqs	\N	\N	\N	7	\N
2647	\N	11	version.hero.links.0.link.reference	1	\N	\N	\N	\N
2648	1	11	version.hero.logos	\N	\N	\N	\N	29
2649	2	11	version.hero.logos	\N	\N	\N	\N	34
2650	3	11	version.hero.logos	\N	\N	\N	\N	33
2651	4	11	version.hero.logos	\N	\N	\N	\N	30
2652	5	11	version.hero.logos	\N	\N	\N	\N	31
2653	6	11	version.hero.logos	\N	\N	\N	\N	32
2654	1	11	version.layout.2.logos	\N	\N	\N	\N	15
2655	2	11	version.layout.2.logos	\N	\N	\N	\N	16
2656	3	11	version.layout.2.logos	\N	\N	\N	\N	17
2657	4	11	version.layout.2.logos	\N	\N	\N	\N	18
2658	5	11	version.layout.2.logos	\N	\N	\N	\N	19
2659	6	11	version.layout.2.logos	\N	\N	\N	\N	20
2660	\N	11	version.layout.6.links.0.link.reference	1	\N	\N	\N	\N
2661	1	11	version.layout.6.faqs	\N	\N	\N	1	\N
2662	2	11	version.layout.6.faqs	\N	\N	\N	2	\N
2663	3	11	version.layout.6.faqs	\N	\N	\N	3	\N
2664	4	11	version.layout.6.faqs	\N	\N	\N	4	\N
2665	5	11	version.layout.6.faqs	\N	\N	\N	5	\N
2666	6	11	version.layout.6.faqs	\N	\N	\N	6	\N
2667	7	11	version.layout.6.faqs	\N	\N	\N	7	\N
3403	\N	14	version.hero.links.0.link.reference	1	\N	\N	\N	\N
3404	1	14	version.hero.logos	\N	\N	\N	\N	29
3405	2	14	version.hero.logos	\N	\N	\N	\N	34
3406	3	14	version.hero.logos	\N	\N	\N	\N	33
3407	4	14	version.hero.logos	\N	\N	\N	\N	30
3408	5	14	version.hero.logos	\N	\N	\N	\N	31
3409	6	14	version.hero.logos	\N	\N	\N	\N	32
3410	1	14	version.layout.2.logos	\N	\N	\N	\N	15
3411	2	14	version.layout.2.logos	\N	\N	\N	\N	16
3412	3	14	version.layout.2.logos	\N	\N	\N	\N	17
3413	4	14	version.layout.2.logos	\N	\N	\N	\N	18
3414	5	14	version.layout.2.logos	\N	\N	\N	\N	19
3415	6	14	version.layout.2.logos	\N	\N	\N	\N	20
3416	\N	14	version.layout.6.links.0.link.reference	1	\N	\N	\N	\N
3417	1	14	version.layout.6.faqs	\N	\N	\N	1	\N
3418	2	14	version.layout.6.faqs	\N	\N	\N	2	\N
3419	3	14	version.layout.6.faqs	\N	\N	\N	3	\N
3420	4	14	version.layout.6.faqs	\N	\N	\N	4	\N
3421	5	14	version.layout.6.faqs	\N	\N	\N	5	\N
3422	6	14	version.layout.6.faqs	\N	\N	\N	6	\N
3423	7	14	version.layout.6.faqs	\N	\N	\N	7	\N
3424	\N	15	version.hero.links.0.link.reference	1	\N	\N	\N	\N
3425	1	15	version.hero.logos	\N	\N	\N	\N	29
3426	2	15	version.hero.logos	\N	\N	\N	\N	34
3427	3	15	version.hero.logos	\N	\N	\N	\N	33
3428	4	15	version.hero.logos	\N	\N	\N	\N	30
3429	5	15	version.hero.logos	\N	\N	\N	\N	31
3430	6	15	version.hero.logos	\N	\N	\N	\N	32
3431	1	15	version.layout.2.logos	\N	\N	\N	\N	15
3432	2	15	version.layout.2.logos	\N	\N	\N	\N	16
3433	3	15	version.layout.2.logos	\N	\N	\N	\N	17
3434	4	15	version.layout.2.logos	\N	\N	\N	\N	18
3435	5	15	version.layout.2.logos	\N	\N	\N	\N	19
3436	6	15	version.layout.2.logos	\N	\N	\N	\N	20
3088	\N	12	version.hero.links.0.link.reference	1	\N	\N	\N	\N
3089	1	12	version.hero.logos	\N	\N	\N	\N	29
3090	2	12	version.hero.logos	\N	\N	\N	\N	34
3091	3	12	version.hero.logos	\N	\N	\N	\N	33
3092	4	12	version.hero.logos	\N	\N	\N	\N	30
3093	5	12	version.hero.logos	\N	\N	\N	\N	31
3094	6	12	version.hero.logos	\N	\N	\N	\N	32
3095	1	12	version.layout.2.logos	\N	\N	\N	\N	15
3096	2	12	version.layout.2.logos	\N	\N	\N	\N	16
3097	3	12	version.layout.2.logos	\N	\N	\N	\N	17
3098	4	12	version.layout.2.logos	\N	\N	\N	\N	18
3099	5	12	version.layout.2.logos	\N	\N	\N	\N	19
3100	6	12	version.layout.2.logos	\N	\N	\N	\N	20
3101	\N	12	version.layout.6.links.0.link.reference	1	\N	\N	\N	\N
3102	1	12	version.layout.6.faqs	\N	\N	\N	1	\N
3103	2	12	version.layout.6.faqs	\N	\N	\N	2	\N
3104	3	12	version.layout.6.faqs	\N	\N	\N	3	\N
3105	4	12	version.layout.6.faqs	\N	\N	\N	4	\N
3106	5	12	version.layout.6.faqs	\N	\N	\N	5	\N
3107	6	12	version.layout.6.faqs	\N	\N	\N	6	\N
3108	7	12	version.layout.6.faqs	\N	\N	\N	7	\N
3437	\N	15	version.layout.6.links.0.link.reference	1	\N	\N	\N	\N
3438	1	15	version.layout.6.faqs	\N	\N	\N	1	\N
3439	2	15	version.layout.6.faqs	\N	\N	\N	2	\N
3440	3	15	version.layout.6.faqs	\N	\N	\N	3	\N
3441	4	15	version.layout.6.faqs	\N	\N	\N	4	\N
3442	5	15	version.layout.6.faqs	\N	\N	\N	5	\N
3443	6	15	version.layout.6.faqs	\N	\N	\N	6	\N
3444	7	15	version.layout.6.faqs	\N	\N	\N	7	\N
3844	\N	16	version.hero.links.0.link.reference	1	\N	\N	\N	\N
3845	1	16	version.hero.logos	\N	\N	\N	\N	29
3846	2	16	version.hero.logos	\N	\N	\N	\N	34
3847	3	16	version.hero.logos	\N	\N	\N	\N	33
3848	4	16	version.hero.logos	\N	\N	\N	\N	30
3849	5	16	version.hero.logos	\N	\N	\N	\N	31
3850	6	16	version.hero.logos	\N	\N	\N	\N	32
3851	1	16	version.layout.2.logos	\N	\N	\N	\N	15
3852	2	16	version.layout.2.logos	\N	\N	\N	\N	16
3853	3	16	version.layout.2.logos	\N	\N	\N	\N	17
3854	4	16	version.layout.2.logos	\N	\N	\N	\N	18
3855	5	16	version.layout.2.logos	\N	\N	\N	\N	19
3856	6	16	version.layout.2.logos	\N	\N	\N	\N	20
3857	\N	16	version.layout.6.links.0.link.reference	1	\N	\N	\N	\N
3858	1	16	version.layout.6.faqs	\N	\N	\N	1	\N
3859	2	16	version.layout.6.faqs	\N	\N	\N	2	\N
3860	3	16	version.layout.6.faqs	\N	\N	\N	3	\N
3861	4	16	version.layout.6.faqs	\N	\N	\N	4	\N
3862	5	16	version.layout.6.faqs	\N	\N	\N	5	\N
3863	6	16	version.layout.6.faqs	\N	\N	\N	6	\N
3864	7	16	version.layout.6.faqs	\N	\N	\N	7	\N
3865	\N	17	version.hero.links.0.link.reference	1	\N	\N	\N	\N
3866	1	17	version.hero.logos	\N	\N	\N	\N	29
3867	2	17	version.hero.logos	\N	\N	\N	\N	34
3868	3	17	version.hero.logos	\N	\N	\N	\N	33
3869	4	17	version.hero.logos	\N	\N	\N	\N	30
3870	5	17	version.hero.logos	\N	\N	\N	\N	31
3871	6	17	version.hero.logos	\N	\N	\N	\N	32
3872	1	17	version.layout.2.logos	\N	\N	\N	\N	15
3873	2	17	version.layout.2.logos	\N	\N	\N	\N	16
3874	3	17	version.layout.2.logos	\N	\N	\N	\N	17
3875	4	17	version.layout.2.logos	\N	\N	\N	\N	18
3876	5	17	version.layout.2.logos	\N	\N	\N	\N	19
3877	6	17	version.layout.2.logos	\N	\N	\N	\N	20
3878	\N	17	version.layout.6.links.0.link.reference	1	\N	\N	\N	\N
3879	1	17	version.layout.6.faqs	\N	\N	\N	1	\N
3880	2	17	version.layout.6.faqs	\N	\N	\N	2	\N
3881	3	17	version.layout.6.faqs	\N	\N	\N	3	\N
3882	4	17	version.layout.6.faqs	\N	\N	\N	4	\N
3883	5	17	version.layout.6.faqs	\N	\N	\N	5	\N
3884	6	17	version.layout.6.faqs	\N	\N	\N	6	\N
3885	7	17	version.layout.6.faqs	\N	\N	\N	7	\N
\.


--
-- Data for Name: _pages_v_version_hero_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_version_hero_links" ("_order", "_parent_id", "id", "link_type", "link_new_tab", "link_url", "link_appearance", "_uuid") FROM stdin;
1	2	69	reference	\N	\N	default	67dd2741ea208a05e1daa429
1	3	70	reference	\N	\N	default	67dd2741ea208a05e1daa429
1	4	878	reference	\N	\N	default	67dd2741ea208a05e1daa429
1	5	879	reference	\N	\N	default	67dd2741ea208a05e1daa429
1	16	1031	custom	\N	/ar#Form	default	67dd2741ea208a05e1daa429
1	17	1032	custom	\N	/ar#Form	default	67dd2741ea208a05e1daa429
1	10	973	reference	\N	\N	default	67dd2741ea208a05e1daa429
1	11	974	reference	\N	\N	default	67dd2741ea208a05e1daa429
1	12	995	custom	\N	/ar#Form	default	67dd2741ea208a05e1daa429
1	13	996	custom	\N	/ar#Form	default	67dd2741ea208a05e1daa429
1	6	941	reference	\N	\N	default	67dd2741ea208a05e1daa429
1	7	942	reference	\N	\N	default	67dd2741ea208a05e1daa429
1	8	943	reference	\N	\N	default	67dd2741ea208a05e1daa429
1	9	944	reference	\N	\N	default	67dd2741ea208a05e1daa429
1	14	1010	custom	\N	/ar#Form	default	67dd2741ea208a05e1daa429
1	15	1011	custom	\N	/ar#Form	default	67dd2741ea208a05e1daa429
\.


--
-- Data for Name: _pages_v_version_hero_links_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_pages_v_version_hero_links_locales" ("link_label", "id", "_locale", "_parent_id") FROM stdin;
إبدأ مع زاد الآن	67	ar	69
إبدأ مع زاد الآن	68	ar	70
إبدأ مع زاد الآن	876	ar	878
إبدأ مع زاد الآن	877	ar	879
إبدأ مع زاد الآن	1029	ar	1031
إبدأ مع زاد الآن	1030	ar	1032
إبدأ مع زاد الآن	971	ar	973
إبدأ مع زاد الآن	972	ar	974
إبدأ مع زاد الآن	993	ar	995
إبدأ مع زاد الآن	994	ar	996
إبدأ مع زاد الآن	939	ar	941
إبدأ مع زاد الآن	940	ar	942
إبدأ مع زاد الآن	941	ar	943
إبدأ مع زاد الآن	942	ar	944
إبدأ مع زاد الآن	1008	ar	1010
إبدأ مع زاد الآن	1009	ar	1011
\.


--
-- Data for Name: _posts_v; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_posts_v" ("id", "parent_id", "version_title", "version_hero_image_id", "version_content", "version_published_at", "version_slug", "version_slug_lock", "version_updated_at", "version_created_at", "version__status", "created_at", "updated_at", "snapshot", "published_locale", "latest", "autosave") FROM stdin;
1	1	\N	\N	\N	\N	\N	t	2025-03-26 13:39:41.685+00	2025-03-26 13:39:41.673+00	draft	2025-03-26 13:39:41.759+00	2025-03-26 13:39:41.76+00	\N	\N	f	f
2	1	\N	\N	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [], "direction": null, "textStyle": "", "textFormat": 0}], "direction": null}}	\N		t	2025-04-14 17:20:48.633+00	2025-03-26 13:39:41.673+00	draft	2025-03-26 13:39:43.085+00	2025-04-14 17:20:48.654+00	\N	\N	t	t
\.


--
-- Data for Name: _posts_v_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_posts_v_locales" ("version_meta_title", "version_meta_image_id", "version_meta_description", "id", "_locale", "_parent_id") FROM stdin;
\N	\N	\N	1	en	1
\N	\N	\N	2	ar	1
\N	\N	\N	35	en	2
\N	\N	\N	36	ar	2
\.


--
-- Data for Name: _posts_v_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_posts_v_rels" ("id", "order", "parent_id", "path", "posts_id", "categories_id", "users_id") FROM stdin;
\.


--
-- Data for Name: _posts_v_version_populated_authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."_posts_v_version_populated_authors" ("_order", "_parent_id", "id", "_uuid", "name") FROM stdin;
\.


--
-- Data for Name: categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."categories" ("id", "title", "slug", "slug_lock", "parent_id", "updated_at", "created_at") FROM stdin;
\.


--
-- Data for Name: categories_breadcrumbs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."categories_breadcrumbs" ("_order", "_parent_id", "_locale", "id", "doc_id", "url", "label") FROM stdin;
\.


--
-- Data for Name: faq; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."faq" ("id", "updated_at", "created_at") FROM stdin;
1	2025-03-21 13:56:23.597+00	2025-03-21 13:56:23.595+00
2	2025-03-21 13:57:00.533+00	2025-03-21 13:57:00.532+00
3	2025-03-21 13:57:16.925+00	2025-03-21 13:57:16.924+00
4	2025-03-21 13:57:34.598+00	2025-03-21 13:57:34.597+00
5	2025-03-21 13:57:45.223+00	2025-03-21 13:57:45.222+00
6	2025-03-21 13:57:56.474+00	2025-03-21 13:57:56.474+00
7	2025-03-21 13:58:08.592+00	2025-03-21 13:58:08.591+00
\.


--
-- Data for Name: faq_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."faq_locales" ("question", "answer", "id", "_locale", "_parent_id") FROM stdin;
هل زاد شركة تجارية ؟	\N	1	ar	1
هل يمكنني تجربة زاد مجانًا ؟	\N	2	ar	2
كم يستغرق إعداد المتجر؟	\N	3	ar	3
كيف تتعامل زاد مع المدفوعات والتبرعات ؟	\N	4	ar	4
ماذا لو احتجت لدعم تقني أو تسويقي ؟	\N	5	ar	5
ما هي الأنشطة التي يمكنكم مساعدة الجمعية في إغلاق فرص التبرع الخاصة بها ؟	\N	6	ar	6
كيف يمكن الجمعية الاستفادة من خدمات تطوير منصتها وفرص التبرع الخاصة بها ؟	\N	7	ar	7
\.


--
-- Data for Name: footer; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."footer" ("id", "updated_at", "created_at") FROM stdin;
\.


--
-- Data for Name: footer_nav_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."footer_nav_items" ("_order", "_parent_id", "id", "link_type", "link_new_tab", "link_url") FROM stdin;
\.


--
-- Data for Name: footer_nav_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."footer_nav_items_locales" ("link_label", "id", "_locale", "_parent_id") FROM stdin;
\.


--
-- Data for Name: footer_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."footer_rels" ("id", "order", "parent_id", "path", "pages_id", "posts_id") FROM stdin;
\.


--
-- Data for Name: form_submissions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."form_submissions" ("id", "form_id", "updated_at", "created_at") FROM stdin;
1	1	2025-09-23 09:24:29.442+00	2025-09-23 09:24:29.411+00
2	1	2025-11-13 08:55:38.737+00	2025-11-13 08:55:38.709+00
\.


--
-- Data for Name: form_submissions_submission_data; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."form_submissions_submission_data" ("_order", "_parent_id", "id", "field", "value") FROM stdin;
1	1	68d2674d5a4ff70001ff9a22	name	احمد سعداوي
2	1	68d2674d5a4ff70001ff9a23	charityName	جمعية  المركز
3	1	68d2674d5a4ff70001ff9a24	phoneNumber	01061069205
1	2	69159d0a5a4ff70001ff9a25	name	اليقين
2	2	69159d0a5a4ff70001ff9a26	charityName	اليقين
3	2	69159d0a5a4ff70001ff9a27	phoneNumber	
\.


--
-- Data for Name: forms; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms" ("id", "title", "confirmation_type", "redirect_url", "updated_at", "created_at") FROM stdin;
1	Contact form	message	\N	2025-03-21 13:48:10.758+00	2025-03-21 13:46:42.697+00
\.


--
-- Data for Name: forms_blocks_checkbox; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_checkbox" ("_order", "_parent_id", "_path", "id", "name", "width", "required", "default_value", "block_name") FROM stdin;
\.


--
-- Data for Name: forms_blocks_checkbox_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_checkbox_locales" ("label", "id", "_locale", "_parent_id") FROM stdin;
\.


--
-- Data for Name: forms_blocks_country; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_country" ("_order", "_parent_id", "_path", "id", "name", "width", "required", "block_name") FROM stdin;
\.


--
-- Data for Name: forms_blocks_country_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_country_locales" ("label", "id", "_locale", "_parent_id") FROM stdin;
\.


--
-- Data for Name: forms_blocks_email; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_email" ("_order", "_parent_id", "_path", "id", "name", "width", "required", "block_name") FROM stdin;
\.


--
-- Data for Name: forms_blocks_email_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_email_locales" ("label", "id", "_locale", "_parent_id") FROM stdin;
\.


--
-- Data for Name: forms_blocks_message; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_message" ("_order", "_parent_id", "_path", "id", "block_name") FROM stdin;
\.


--
-- Data for Name: forms_blocks_message_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_message_locales" ("message", "id", "_locale", "_parent_id") FROM stdin;
\.


--
-- Data for Name: forms_blocks_number; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_number" ("_order", "_parent_id", "_path", "id", "name", "width", "default_value", "required", "block_name") FROM stdin;
3	1	fields	67dd6cc1c06fe6cfef50c240	phoneNumber	\N	\N	\N	\N
\.


--
-- Data for Name: forms_blocks_number_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_number_locales" ("label", "id", "_locale", "_parent_id") FROM stdin;
رقم الجوال	2	ar	67dd6cc1c06fe6cfef50c240
\.


--
-- Data for Name: forms_blocks_select; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_select" ("_order", "_parent_id", "_path", "id", "name", "width", "required", "block_name", "placeholder") FROM stdin;
\.


--
-- Data for Name: forms_blocks_select_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_select_locales" ("label", "default_value", "id", "_locale", "_parent_id") FROM stdin;
\.


--
-- Data for Name: forms_blocks_select_options; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_select_options" ("_order", "_parent_id", "id", "value") FROM stdin;
\.


--
-- Data for Name: forms_blocks_select_options_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_select_options_locales" ("label", "id", "_locale", "_parent_id") FROM stdin;
\.


--
-- Data for Name: forms_blocks_state; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_state" ("_order", "_parent_id", "_path", "id", "name", "width", "required", "block_name") FROM stdin;
\.


--
-- Data for Name: forms_blocks_state_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_state_locales" ("label", "id", "_locale", "_parent_id") FROM stdin;
\.


--
-- Data for Name: forms_blocks_text; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_text" ("_order", "_parent_id", "_path", "id", "name", "width", "required", "block_name") FROM stdin;
1	1	fields	67dd6bf4c06fe6cfef50c23c	name	\N	t	\N
2	1	fields	67dd6c18c06fe6cfef50c23e	charityName	\N	\N	\N
\.


--
-- Data for Name: forms_blocks_text_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_text_locales" ("label", "default_value", "id", "_locale", "_parent_id") FROM stdin;
الإسم	\N	3	ar	67dd6bf4c06fe6cfef50c23c
إسم الجمعية	\N	4	ar	67dd6c18c06fe6cfef50c23e
\.


--
-- Data for Name: forms_blocks_textarea; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_textarea" ("_order", "_parent_id", "_path", "id", "name", "width", "required", "block_name") FROM stdin;
\.


--
-- Data for Name: forms_blocks_textarea_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_blocks_textarea_locales" ("label", "default_value", "id", "_locale", "_parent_id") FROM stdin;
\.


--
-- Data for Name: forms_emails; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_emails" ("_order", "_parent_id", "id", "email_to", "cc", "bcc", "reply_to", "email_from") FROM stdin;
\.


--
-- Data for Name: forms_emails_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_emails_locales" ("subject", "message", "id", "_locale", "_parent_id") FROM stdin;
\.


--
-- Data for Name: forms_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."forms_locales" ("submit_button_label", "confirmation_message", "id", "_locale", "_parent_id") FROM stdin;
إبدأ زاد الجمعية الآن	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شكراً لتواصلك معنا. لقد استلمنا رسالتك وسنرد عليك في غضون 24-48 ساعة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	2	ar	1
\.


--
-- Data for Name: header; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."header" ("id", "updated_at", "created_at") FROM stdin;
1	2025-03-27 09:08:28.583+00	2025-03-21 17:40:42.426+00
\.


--
-- Data for Name: header_nav_items; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."header_nav_items" ("_order", "_parent_id", "id", "link_type", "link_new_tab", "link_url") FROM stdin;
1	1	67dda46689b1617b0d62f87c	custom	\N	/ar#Form
\.


--
-- Data for Name: header_nav_items_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."header_nav_items_locales" ("link_label", "id", "_locale", "_parent_id") FROM stdin;
إبدأ مع زاد	6	ar	67dda46689b1617b0d62f87c
\.


--
-- Data for Name: header_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."header_rels" ("id", "order", "parent_id", "path", "pages_id", "posts_id") FROM stdin;
4	\N	1	navItems.1.link.reference	1	\N
6	\N	1	navItems.0.link.reference	1	\N
\.


--
-- Data for Name: media; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."media" ("id", "alt", "caption", "updated_at", "created_at", "url", "thumbnail_u_r_l", "filename", "mime_type", "filesize", "width", "height", "focal_x", "focal_y", "sizes_thumbnail_url", "sizes_thumbnail_width", "sizes_thumbnail_height", "sizes_thumbnail_mime_type", "sizes_thumbnail_filesize", "sizes_thumbnail_filename", "sizes_square_url", "sizes_square_width", "sizes_square_height", "sizes_square_mime_type", "sizes_square_filesize", "sizes_square_filename", "sizes_small_url", "sizes_small_width", "sizes_small_height", "sizes_small_mime_type", "sizes_small_filesize", "sizes_small_filename", "sizes_medium_url", "sizes_medium_width", "sizes_medium_height", "sizes_medium_mime_type", "sizes_medium_filesize", "sizes_medium_filename", "sizes_large_url", "sizes_large_width", "sizes_large_height", "sizes_large_mime_type", "sizes_large_filesize", "sizes_large_filename", "sizes_xlarge_url", "sizes_xlarge_width", "sizes_xlarge_height", "sizes_xlarge_mime_type", "sizes_xlarge_filesize", "sizes_xlarge_filename", "sizes_og_url", "sizes_og_width", "sizes_og_height", "sizes_og_mime_type", "sizes_og_filesize", "sizes_og_filename", "prefix") FROM stdin;
15	Eshtarek	\N	2025-03-22 08:13:28.716+00	2025-03-22 08:13:28.216+00	\N	\N	Eshtarek.svg	image/svg+xml	8724	125	40	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	media
16	NCNS	\N	2025-03-22 08:13:30.778+00	2025-03-22 08:13:30.26+00	\N	\N	NCNS.svg	image/svg+xml	82367	93	40	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	media
17	Optimize	\N	2025-03-22 08:13:31.61+00	2025-03-22 08:13:31.396+00	\N	\N	Optimize.svg	image/svg+xml	7828	155	40	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	media
18	Snapchat	\N	2025-03-22 08:13:32.747+00	2025-03-22 08:13:32.298+00	\N	\N	Snapchat.svg	image/svg+xml	11194	137	40	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	media
19	Taqrer	\N	2025-03-22 08:13:33.678+00	2025-03-22 08:13:33.285+00	\N	\N	Taqrer.svg	image/svg+xml	7316	117	40	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	media
20	TikTok	\N	2025-03-22 08:13:34.422+00	2025-03-22 08:13:34.183+00	\N	\N	Tiktok.svg	image/svg+xml	2490	135	40	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	media
21	analytics	\N	2025-03-22 08:14:53.7+00	2025-03-22 08:14:51.523+00	\N	\N	analytics.png	image/png	389761	1249	960	50	50	\N	300	231	image/png	33270	analytics-300x231.png	\N	500	500	image/png	93579	analytics-500x500.png	\N	600	461	image/png	106403	analytics-600x461.png	\N	900	692	image/png	228627	analytics-900x692.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	320861	analytics-1200x630.png	media
22	dashboard	\N	2025-03-22 08:14:58.31+00	2025-03-22 08:14:56.488+00	\N	\N	dashboard.png	image/png	211955	1249	960	50	50	\N	300	231	image/png	23721	dashboard-300x231.png	\N	500	500	image/png	48281	dashboard-500x500.png	\N	600	461	image/png	68958	dashboard-600x461.png	\N	900	692	image/png	137610	dashboard-900x692.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	154593	dashboard-1200x630.png	media
23	hero	\N	2025-03-22 08:15:13.193+00	2025-03-22 08:15:11.543+00	\N	\N	hero.png	image/png	44210	1176	1176	50	50	\N	300	300	image/png	14199	hero-300x300.png	\N	500	500	image/png	28446	hero-500x500.png	\N	600	600	image/png	36085	hero-600x600.png	\N	900	900	image/png	63140	hero-900x900.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	71057	hero-1200x630.png	media
24	حلول رقمية متكاملة	\N	2025-03-22 08:19:31.838+00	2025-03-22 08:19:30.563+00	\N	\N	solutions.png	image/png	23117	750	750	50	50	\N	300	300	image/png	15892	solutions-300x300.png	\N	500	500	image/png	31230	solutions-500x500.png	\N	600	600	image/png	41383	solutions-600x600.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	96301	solutions-1200x630.png	media
25	تحقيق الاستدامة المالية للجمعية	\N	2025-03-22 08:19:33.923+00	2025-03-22 08:19:32.69+00	\N	\N	growth.png	image/png	26183	750	750	50	50	\N	300	300	image/png	22473	growth-300x300.png	\N	500	500	image/png	42190	growth-500x500.png	\N	600	600	image/png	56641	growth-600x600.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	110175	growth-1200x630.png	media
26	تحقيق الاستدامة المالية للجمعية	\N	2025-03-22 08:19:35.77+00	2025-03-22 08:19:34.565+00	\N	\N	crm.png	image/png	20871	750	750	50	50	\N	300	300	image/png	14421	crm-300x300.png	\N	500	500	image/png	26945	crm-500x500.png	\N	600	600	image/png	36355	crm-600x600.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	65140	crm-1200x630.png	media
27	يدينا بيديك	\N	2025-03-22 08:19:37.89+00	2025-03-22 08:19:36.544+00	\N	\N	handinhand.png	image/png	29452	750	750	50	50	\N	300	300	image/png	23206	handinhand-300x300.png	\N	500	500	image/png	44885	handinhand-500x500.png	\N	600	600	image/png	59324	handinhand-600x600.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	139664	handinhand-1200x630.png	media
28	دعم فني وتسويقي مستمر	\N	2025-03-22 08:19:39.828+00	2025-03-22 08:19:38.639+00	\N	\N	support.png	image/png	28718	750	750	50	50	\N	300	300	image/png	21658	support-300x300.png	\N	500	500	image/png	41230	support-500x500.png	\N	600	600	image/png	54265	support-600x600.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	1200	630	image/png	128348	support-1200x630.png	media
29	جمعية الأعمال	\N	2025-03-24 10:58:12.896+00	2025-03-24 10:58:12.414+00	\N	\N	alaamal.svg	image/svg+xml	26709	131	32	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	media
30	جمعية العناية	\N	2025-03-24 10:58:14.2+00	2025-03-24 10:58:13.726+00	\N	\N	alenayah.svg	image/svg+xml	39324	122	32	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	media
31	جمعية إحسانكم	\N	2025-03-24 10:58:15.447+00	2025-03-24 10:58:14.913+00	\N	\N	ehsankom.svg	image/svg+xml	19160	33	32	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	media
32	جمعية ثمرات	\N	2025-03-24 10:58:16.437+00	2025-03-24 10:58:16.008+00	\N	\N	thmarat.svg	image/svg+xml	4938	36	32	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	media
33	جمعية يلملم	\N	2025-03-24 10:58:17.936+00	2025-03-24 10:58:17.117+00	\N	\N	yalamlam.svg	image/svg+xml	13863	44	32	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	media
34	جمعية يقين	\N	2025-03-24 10:58:18.854+00	2025-03-24 10:58:18.429+00	\N	\N	yaqeen.svg	image/svg+xml	12705	38	32	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	media
35	Testing	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "Testing", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "ltr", "textStyle": "", "textFormat": 0}], "direction": "ltr"}}	2025-08-21 16:17:52.065+00	2025-08-21 16:17:51.899+00	\N	\N	crm-300x300.png	image/png	14421	300	300	50	50	\N	300	300	image/png	14421	crm-300x300-300x300.png	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	\N	media
\.


--
-- Data for Name: pages; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages" ("id", "title", "hero_type", "published_at", "slug", "slug_lock", "updated_at", "created_at", "_status", "hero_link_text") FROM stdin;
1	Home	highImpact	2025-03-21 08:46:14.743+00	home	t	2025-08-16 05:41:03.006+00	2025-03-21 08:44:07.555+00	published	\N
\.


--
-- Data for Name: pages_blocks_archive; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_archive" ("_order", "_parent_id", "_path", "id", "intro_content", "populate_by", "relation_to", "limit", "block_name") FROM stdin;
\.


--
-- Data for Name: pages_blocks_content; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_content" ("_order", "_parent_id", "_path", "id", "variant", "rich_text", "block_name") FROM stdin;
1	1	layout	67dd2a7dee9c04239ea1fea1	2	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لماذا تختار الجمعيات زاد ؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	WHY ZAD
2	1	layout	67dd2eb8a896e469ebeae65b	3	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كيف تعمل زاد؟", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	HOW TO
5	1	layout	67dd41cca896e469ebeae665	4	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لتشغيل متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "خصائص تمكن الجمعيات الخيرية من تشغيل متاجر خيرية، تسويقها ومراقبة أداءها، وجمع التبرعات بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	FEATURES
\.


--
-- Data for Name: pages_blocks_content_list; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_content_list" ("_order", "_parent_id", "id", "size", "icon", "tag", "heading", "content", "media_id", "link_type", "link_new_tab", "link_url", "link_appearance") FROM stdin;
1	67dd2a7dee9c04239ea1fea1	67dd2aa8ee9c04239ea1fea3	oneThird	\N	\N	حلول رقمية متكاملة	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لإنشاء وإدارة منصة التبرع الخاصة بالجمعية بسهولة وبشكل آني", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	24	reference	\N	\N	default
2	67dd2a7dee9c04239ea1fea1	67dd2c29ee9c04239ea1fea5	oneThird	\N	\N	تحقيق الاستدامة المالية للجمعية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تنويع مصادر الدخل ، وخدمات زاد ليست حصرا على منصة التبرعات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	25	reference	\N	\N	default
3	67dd2a7dee9c04239ea1fea1	67dd2c5eee9c04239ea1fea7	oneThird	\N	\N	مساندة الجمعية في إدارة العلاقة مع المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "مساندة الجمعية في إدارة العلاقة مع المتبرعين", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	26	reference	\N	\N	default
4	67dd2a7dee9c04239ea1fea1	67dd2c7eee9c04239ea1fea9	oneThird	\N	\N	دعم فني وتسويقي مستمر	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "للمساهمة في رفع إيرادات الجمعية من جميع أنشطتها الترويجية والتسويقية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	28	reference	\N	\N	default
1	67dd2eb8a896e469ebeae65b	67dd2ef2a896e469ebeae65d	oneThird	user-add-line	\N	أنشئ حسابك في دقائق	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "عبر تسجيل الدخول برقم الترخيص الصادر من مركز تنمية القطاع غير الربحي", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default
2	67dd2eb8a896e469ebeae65b	67dd2f24a896e469ebeae65f	oneThird	store-2-line	\N	إعداد متجرك	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "أضف فرص التبرع بسهولة وعدل منصة الجمعية بأفضل ما يمكن", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default
3	67dd2eb8a896e469ebeae65b	67dd2f3da896e469ebeae661	oneThird	broadcast-line	\N	جذب المتبرعين	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "استخدم أوبتمايز بلس لإدارة الحملات الترويجية في جميع منصات التواصل بسهولة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default
4	67dd2eb8a896e469ebeae65b	67dd2f5ba896e469ebeae663	oneThird	line-chart-line	\N	استدامة الجمعية المالية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تتبع التبرعات وتحليل الأداء من خلال أدوات منصة زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	reference	\N	\N	default
1	67dd41cca896e469ebeae665	67dd42c2a14b92b128ef217a	oneThird	\N	منصة متكاملة تقنيا	لوحة تحكم سهلة الإستخدام	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "لوحة تحكم خاصة للجمعيات حيث يمكن للجمعية الاستفادة من لوحة تحكم باللغة العربية وقابلة للاستخدام دون الحاجة لخبرة برمجية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	22	reference	\N	\N	default
2	67dd41cca896e469ebeae665	67dd42f7a14b92b128ef217c	oneThird	\N	إدارة ذكية لأعمالك	تقارير تفصيلية عن أداء المشروع	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "متابعة أداء المتجر بشكل عام، والحصول على تحليلات دقيقة بشكل واضح ومعرفة كافة التبرعات ومصادرها سواء لفرص أو منتجات التبرع ويمكن تصديرها بشكل مفصل.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	21	reference	\N	\N	default
\.


--
-- Data for Name: pages_blocks_content_list_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_content_list_locales" ("link_label", "id", "_locale", "_parent_id") FROM stdin;
\N	109	en	67dd2aa8ee9c04239ea1fea3
\N	110	ar	67dd2aa8ee9c04239ea1fea3
\N	111	en	67dd2c29ee9c04239ea1fea5
\N	112	ar	67dd2c29ee9c04239ea1fea5
\N	113	en	67dd2c5eee9c04239ea1fea7
\N	114	ar	67dd2c5eee9c04239ea1fea7
\N	115	en	67dd2c7eee9c04239ea1fea9
\N	116	ar	67dd2c7eee9c04239ea1fea9
\N	117	en	67dd2ef2a896e469ebeae65d
\N	118	ar	67dd2ef2a896e469ebeae65d
\N	119	en	67dd2f24a896e469ebeae65f
\N	120	ar	67dd2f24a896e469ebeae65f
\N	121	en	67dd2f3da896e469ebeae661
\N	122	ar	67dd2f3da896e469ebeae661
\N	123	en	67dd2f5ba896e469ebeae663
\N	124	ar	67dd2f5ba896e469ebeae663
\N	125	en	67dd42c2a14b92b128ef217a
\N	126	ar	67dd42c2a14b92b128ef217a
\N	127	en	67dd42f7a14b92b128ef217c
\N	128	ar	67dd42f7a14b92b128ef217c
\.


--
-- Data for Name: pages_blocks_cta; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_cta" ("_order", "_parent_id", "_path", "id", "rich_text", "block_name") FROM stdin;
\.


--
-- Data for Name: pages_blocks_cta_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_cta_links" ("_order", "_parent_id", "id", "link_type", "link_new_tab", "link_url", "link_appearance") FROM stdin;
\.


--
-- Data for Name: pages_blocks_cta_links_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_cta_links_locales" ("link_label", "id", "_locale", "_parent_id") FROM stdin;
\.


--
-- Data for Name: pages_blocks_faq_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_faq_block" ("_order", "_parent_id", "_path", "id", "rich_text", "block_name") FROM stdin;
7	1	layout	67dd7bd5fb92c1f4e493e1ac	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "الأسئلة الشائعة", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "داعمينك لين توصل جمعيتك للاستدامة. عندك اسئلة؟ يمديك تتواصل معنا عبر الاستمارة، الواتس اب، او مجادثة مباشرة.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	FAQ
\.


--
-- Data for Name: pages_blocks_faq_block_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_faq_block_links" ("_order", "_parent_id", "id", "link_type", "link_new_tab", "link_url", "link_appearance") FROM stdin;
1	67dd7bd5fb92c1f4e493e1ac	67dd7d2389b1617b0d62f87a	reference	\N	\N	default
\.


--
-- Data for Name: pages_blocks_faq_block_links_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_faq_block_links_locales" ("link_label", "id", "_locale", "_parent_id") FROM stdin;
تواصل معنا	8	ar	67dd7d2389b1617b0d62f87a
\.


--
-- Data for Name: pages_blocks_form_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_form_block" ("_order", "_parent_id", "_path", "id", "form_id", "enable_heading", "rich_text", "block_name") FROM stdin;
8	1	layout	67dd6dcfc06fe6cfef50c242	1	t	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "سجل اهتمامك الآن!", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "احصل على دليل التسويق للجمعيات مجانا", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	Form
\.


--
-- Data for Name: pages_blocks_logo_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_logo_block" ("_order", "_parent_id", "_path", "id", "caption", "block_name") FROM stdin;
3	1	layout	67dd440da14b92b128ef217e	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h3", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "شركاؤنا في دعم وتمكين المنظمات غير الربحية", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	PARTNERS
\.


--
-- Data for Name: pages_blocks_media_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_media_block" ("_order", "_parent_id", "_path", "id", "media_id", "block_name") FROM stdin;
\.


--
-- Data for Name: pages_blocks_pricing_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_pricing_block" ("_order", "_parent_id", "_path", "id", "rich_text", "block_name", "base_features_tag", "base_features_heading", "base_features_content", "additional_features_tag", "additional_features_heading", "additional_features_content", "tag") FROM stdin;
6	1	layout	67dd52363656a85f842b4237	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h2", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "باقة نمو زاد", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}], "direction": "rtl"}}	FEATURES #2	\N	المزايا الأساسية	{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "كل ما تحتاجه لإطلاق متجرك الخيري", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	\N	مزايا إضافية مخصصة للجمعيات	\N	الميزات
\.


--
-- Data for Name: pages_blocks_pricing_block_additional_features_features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_pricing_block_additional_features_features" ("_order", "_parent_id", "id", "icon", "feature", "description") FROM stdin;
1	67dd52363656a85f842b4237	67dd542b26f6d0eda1519c82	add-circle-line	اوبتمايز بلس	لإدارة الحملات الإعلانية
2	67dd52363656a85f842b4237	67dd56dd1a2c7d6139c3374b	brush-ai-line	ثيم إيثار الفخم	تفعيل مجاني لثيم إيثار المطور
3	67dd52363656a85f842b4237	67dd573f1a2c7d6139c3374f	shake-hands-line	مساندة المتاجر التجارية لفرص التبرع	\N
4	67dd52363656a85f842b4237	67dd585e1a2c7d6139c33751	megaphone-line	قنوات ترويج إضافية	قيمة ترويج إضافية بالشراكة مع المنصات
5	67dd52363656a85f842b4237	67dd58831a2c7d6139c33753	customer-service-line	استشارات مع خبراء	لتطوير عرض الفرص والمنصة
6	67dd52363656a85f842b4237	67dd59211a2c7d6139c33755	calendar-todo-line	الاستقطاع الشهري	متجرك شغال بدون اشتراك
\.


--
-- Data for Name: pages_blocks_pricing_block_base_features_features; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_pricing_block_base_features_features" ("_order", "_parent_id", "id", "icon", "feature", "description") FROM stdin;
1	67dd52363656a85f842b4237	67dd52393656a85f842b4239	hand-coin-line	فرص تبرع غير محدودة	\N
2	67dd52363656a85f842b4237	67dd55181a2c7d6139c33742	group-line	إدارة المنصة لـ5 أشخاص	\N
3	67dd52363656a85f842b4237	67dd55881a2c7d6139c33745	pie-chart-line	تحليلات متقدمة للمنصة	\N
4	67dd52363656a85f842b4237	67dd55b91a2c7d6139c33747	bank-card-2-line	ربط مع بوابة الدفع الإلكتروني وApple Pay	\N
\.


--
-- Data for Name: pages_blocks_stats_block; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_stats_block" ("_order", "_parent_id", "_path", "id", "caption", "block_name") FROM stdin;
4	1	layout	67dd462aa14b92b128ef218e	\N	STATS
\.


--
-- Data for Name: pages_blocks_stats_block_list; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_blocks_stats_block_list" ("_order", "_parent_id", "id", "number", "description") FROM stdin;
1	67dd462aa14b92b128ef218e	67dd4630a14b92b128ef2190	+1200	جمعية استفادت من زاد منذ 2022
2	67dd462aa14b92b128ef218e	67dd4641a14b92b128ef2192	+650 مليون ريال	حققت الجمعيات التي تستخدم زاد عبر منصاتها
3	67dd462aa14b92b128ef218e	67dd467fa14b92b128ef2194	+6 مليون محسن	تبرع عن طريق منصات زاد
\.


--
-- Data for Name: pages_hero_links; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_hero_links" ("_order", "_parent_id", "id", "link_type", "link_new_tab", "link_url", "link_appearance") FROM stdin;
1	1	67dd2741ea208a05e1daa429	custom	\N	/ar#Form	default
\.


--
-- Data for Name: pages_hero_links_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_hero_links_locales" ("link_label", "id", "_locale", "_parent_id") FROM stdin;
إبدأ مع زاد الآن	8	ar	67dd2741ea208a05e1daa429
\.


--
-- Data for Name: pages_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_locales" ("hero_rich_text", "hero_media_id", "meta_title", "meta_image_id", "meta_description", "id", "_locale", "_parent_id") FROM stdin;
\N	\N	\N	\N	\N	15	en	1
{"root": {"type": "root", "format": "", "indent": 0, "version": 1, "children": [{"tag": "h1", "type": "heading", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "تعزيز العطاء الرقمي ونمو الجمعيات", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl"}, {"type": "paragraph", "format": "", "indent": 0, "version": 1, "children": [{"mode": "normal", "text": "زاد منظومة خدمات متكاملة تمكن جمعيتك من تحقيق دخل متنوع ومستدام.", "type": "text", "style": "", "detail": 0, "format": 0, "version": 1}], "direction": "rtl", "textStyle": "", "textFormat": 0}], "direction": "rtl"}}	23	Home | منصة زاد	\N	\N	16	ar	1
\.


--
-- Data for Name: pages_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."pages_rels" ("id", "order", "parent_id", "path", "pages_id", "posts_id", "categories_id", "faq_id", "media_id") FROM stdin;
112	\N	1	hero.links.0.link.reference	1	\N	\N	\N	\N
113	1	1	hero.logos	\N	\N	\N	\N	29
114	2	1	hero.logos	\N	\N	\N	\N	34
115	3	1	hero.logos	\N	\N	\N	\N	33
116	4	1	hero.logos	\N	\N	\N	\N	30
117	5	1	hero.logos	\N	\N	\N	\N	31
118	6	1	hero.logos	\N	\N	\N	\N	32
119	1	1	layout.2.logos	\N	\N	\N	\N	15
120	2	1	layout.2.logos	\N	\N	\N	\N	16
121	3	1	layout.2.logos	\N	\N	\N	\N	17
122	4	1	layout.2.logos	\N	\N	\N	\N	18
123	5	1	layout.2.logos	\N	\N	\N	\N	19
124	6	1	layout.2.logos	\N	\N	\N	\N	20
125	\N	1	layout.6.links.0.link.reference	1	\N	\N	\N	\N
126	1	1	layout.6.faqs	\N	\N	\N	1	\N
127	2	1	layout.6.faqs	\N	\N	\N	2	\N
128	3	1	layout.6.faqs	\N	\N	\N	3	\N
129	4	1	layout.6.faqs	\N	\N	\N	4	\N
130	5	1	layout.6.faqs	\N	\N	\N	5	\N
131	6	1	layout.6.faqs	\N	\N	\N	6	\N
132	7	1	layout.6.faqs	\N	\N	\N	7	\N
26	\N	1	layout.8.links.0.link.reference	1	\N	\N	\N	\N
27	1	1	layout.8.faqs	\N	\N	\N	1	\N
28	2	1	layout.8.faqs	\N	\N	\N	2	\N
29	3	1	layout.8.faqs	\N	\N	\N	3	\N
30	4	1	layout.8.faqs	\N	\N	\N	4	\N
31	5	1	layout.8.faqs	\N	\N	\N	5	\N
32	6	1	layout.8.faqs	\N	\N	\N	6	\N
33	7	1	layout.8.faqs	\N	\N	\N	7	\N
\.


--
-- Data for Name: payload_jobs; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."payload_jobs" ("id", "input", "completed_at", "total_tried", "has_error", "error", "task_slug", "queue", "wait_until", "processing", "updated_at", "created_at") FROM stdin;
\.


--
-- Data for Name: payload_jobs_log; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."payload_jobs_log" ("_order", "_parent_id", "id", "executed_at", "completed_at", "task_slug", "task_i_d", "input", "output", "state", "error") FROM stdin;
\.


--
-- Data for Name: payload_locked_documents; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."payload_locked_documents" ("id", "global_slug", "updated_at", "created_at") FROM stdin;
\.


--
-- Data for Name: payload_locked_documents_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."payload_locked_documents_rels" ("id", "order", "parent_id", "path", "pages_id", "posts_id", "media_id", "categories_id", "faq_id", "users_id", "redirects_id", "forms_id", "form_submissions_id", "search_id", "payload_jobs_id") FROM stdin;
\.


--
-- Data for Name: payload_migrations; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."payload_migrations" ("id", "name", "batch", "updated_at", "created_at") FROM stdin;
2	20250321_213103_init	1	2025-03-22 12:25:47.458+00	2025-03-22 12:25:47.375+00
3	20250322_103632_logos	1	2025-03-22 12:25:47.532+00	2025-03-22 12:25:47.53+00
4	20250324_202827_links_text	2	2025-03-24 20:31:14.139+00	2025-03-24 20:31:14.124+00
5	20250818_083500	3	2025-08-18 08:40:10.831+00	2025-08-18 08:40:10.725+00
\.


--
-- Data for Name: payload_preferences; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."payload_preferences" ("id", "key", "value", "updated_at", "created_at") FROM stdin;
5	forms-list	{}	2025-03-21 13:38:30.59+00	2025-03-21 13:38:30.59+00
6	form-submissions-list	{}	2025-03-21 13:48:13.247+00	2025-03-21 13:48:13.247+00
1	media-list	{"limit": 10}	2025-03-21 09:06:24.24+00	2025-03-21 08:46:25.435+00
3	pages-list	{}	2025-03-21 09:06:37.813+00	2025-03-21 09:06:37.814+00
7	collection-forms-1	{"fields": {"fields": {"collapsed": ["67dd6bf4c06fe6cfef50c23c", "67dd6c18c06fe6cfef50c23e", "67dd6cc1c06fe6cfef50c240"]}}}	2025-03-21 13:58:21.692+00	2025-03-21 13:58:19.353+00
4	faq-list	{"limit": 10}	2025-03-21 10:41:44.257+00	2025-03-21 10:41:18.723+00
9	posts-list	{}	2025-03-22 08:22:24.859+00	2025-03-22 08:22:24.866+00
10	nav	{"open": true}	2025-03-22 08:22:28.086+00	2025-03-22 08:22:27.421+00
8	global-header	{"fields": {"navItems": {"collapsed": []}}}	2025-03-27 09:08:23.1+00	2025-03-21 17:40:17.969+00
11	collection-posts-1	{"fields": {"content": {"hello": "hi", "collapsed": ["67e403c95e3ec32a2f9a3d3e", "67e403cd5e3ec32a2f9a3d3f"]}, "_index-1": {"tabIndex": 2}}}	2025-04-14 17:21:13.379+00	2025-03-26 13:48:42.48+00
12	users-list	{}	2025-08-16 05:41:10.408+00	2025-08-16 05:41:10.416+00
13	pages-list	{}	2025-08-17 06:29:43.358+00	2025-08-17 06:29:43.366+00
14	posts-list	{}	2025-08-17 06:29:53.253+00	2025-08-17 06:29:53.261+00
15	nav	{"open": true}	2025-08-17 09:43:46.599+00	2025-08-17 09:43:46.066+00
17	collection-pages	{}	2025-08-21 13:17:54.837+00	2025-08-21 13:17:54.839+00
16	collection-pages-1	{"fields": {"layout": {"collapsed": ["67dd2eb8a896e469ebeae65b", "67dd440da14b92b128ef217e", "67dd462aa14b92b128ef218e", "67dd41cca896e469ebeae665", "67dd52363656a85f842b4237", "67dd7bd5fb92c1f4e493e1ac", "67dd6dcfc06fe6cfef50c242"]}, "_index-1": {"tabIndex": 1}}}	2025-08-21 13:18:05.371+00	2025-08-17 09:44:24.578+00
18	collection-media	{"limit": 10}	2025-08-21 13:44:22.465+00	2025-08-21 13:44:06.474+00
20	collection-media	{}	2025-08-21 16:17:23.671+00	2025-08-21 16:17:23.672+00
21	collection-users	{}	2025-08-21 17:37:17.634+00	2025-08-21 17:37:17.636+00
22	collection-users	{}	2025-11-03 14:12:19.847+00	2025-11-03 14:12:19.848+00
2	collection-pages-1	{"fields": {"layout": {"collapsed": ["67dd2a7dee9c04239ea1fea1", "67dd2eb8a896e469ebeae65b", "67dd440da14b92b128ef217e", "67dd462aa14b92b128ef218e", "67dd41cca896e469ebeae665", "67dd52363656a85f842b4237", "67dd7bd5fb92c1f4e493e1ac", "67dd6dcfc06fe6cfef50c242"]}, "_index-1": {"tabIndex": 1}, "hero.links": {"collapsed": []}, "hero._index-2": {"collapsed": true}, "layout.2.list": {"collapsed": ["67dd45d1a14b92b128ef2182", "67dd45d7a14b92b128ef2184", "67dd45dca14b92b128ef2186", "67dd45e1a14b92b128ef2188", "67dd45e6a14b92b128ef218a", "67dd45eca14b92b128ef218c"]}, "layout.3.list": {"collapsed": []}, "layout.6.links": {"collapsed": ["67dd7d2389b1617b0d62f87a"]}, "layout.8.links": {"collapsed": []}, "layout.5.baseFeatures.features": {"collapsed": ["67dd55181a2c7d6139c33742", "67dd55881a2c7d6139c33745", "67dd55b91a2c7d6139c33747"]}, "layout.5.additionalFeatures.features": {"collapsed": ["67dd542b26f6d0eda1519c82", "67dd56dd1a2c7d6139c3374b", "67dd585e1a2c7d6139c33751", "67dd58831a2c7d6139c33753", "67dd59211a2c7d6139c33755"]}}}	2025-11-03 14:13:02.912+00	2025-03-21 08:56:52.713+00
19	collection-pages	{"editViewType": "live-preview"}	2025-11-03 14:13:10.855+00	2025-08-21 16:17:15.484+00
23	collection-categories	{}	2025-11-03 14:13:28.963+00	2025-11-03 14:13:28.964+00
24	collection-faq	{}	2025-11-03 14:13:30.298+00	2025-11-03 14:13:30.299+00
25	collection-posts	{}	2025-11-03 14:13:33.776+00	2025-11-03 14:13:33.777+00
26	collection-form-submissions	{}	2025-11-03 14:13:37.536+00	2025-11-03 14:13:37.537+00
27	collection-search	{}	2025-11-03 14:13:39.633+00	2025-11-03 14:13:39.634+00
\.


--
-- Data for Name: payload_preferences_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."payload_preferences_rels" ("id", "order", "parent_id", "path", "users_id") FROM stdin;
58	\N	5	user	1
59	\N	6	user	1
6	\N	1	user	1
7	\N	3	user	1
63	\N	7	user	1
10	\N	4	user	1
76	\N	9	user	1
78	\N	10	user	1
114	\N	8	user	1
121	\N	11	user	1
138	\N	12	user	1
139	\N	13	user	2
140	\N	14	user	2
142	\N	15	user	2
146	\N	17	user	2
147	\N	16	user	2
149	\N	18	user	1
151	\N	20	user	2
152	\N	21	user	2
153	\N	22	user	1
158	\N	2	user	1
159	\N	19	user	1
160	\N	23	user	1
161	\N	24	user	1
162	\N	25	user	1
163	\N	26	user	1
164	\N	27	user	1
\.


--
-- Data for Name: posts; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."posts" ("id", "title", "hero_image_id", "content", "published_at", "slug", "slug_lock", "updated_at", "created_at", "_status") FROM stdin;
1	\N	\N	\N	\N	\N	t	2025-03-26 13:39:41.685+00	2025-03-26 13:39:41.673+00	draft
\.


--
-- Data for Name: posts_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."posts_locales" ("meta_title", "meta_image_id", "meta_description", "id", "_locale", "_parent_id") FROM stdin;
\.


--
-- Data for Name: posts_populated_authors; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."posts_populated_authors" ("_order", "_parent_id", "id", "name") FROM stdin;
\.


--
-- Data for Name: posts_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."posts_rels" ("id", "order", "parent_id", "path", "posts_id", "categories_id", "users_id") FROM stdin;
\.


--
-- Data for Name: redirects; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."redirects" ("id", "from", "to_type", "to_url", "updated_at", "created_at") FROM stdin;
\.


--
-- Data for Name: redirects_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."redirects_rels" ("id", "order", "parent_id", "path", "pages_id", "posts_id") FROM stdin;
\.


--
-- Data for Name: search; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."search" ("id", "priority", "slug", "meta_title", "meta_description", "meta_image_id", "updated_at", "created_at") FROM stdin;
\.


--
-- Data for Name: search_categories; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."search_categories" ("_order", "_parent_id", "id", "relation_to", "title") FROM stdin;
\.


--
-- Data for Name: search_locales; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."search_locales" ("title", "id", "_locale", "_parent_id") FROM stdin;
\.


--
-- Data for Name: search_rels; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."search_rels" ("id", "order", "parent_id", "path", "posts_id") FROM stdin;
\.


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."users" ("id", "name", "updated_at", "created_at", "email", "reset_password_token", "reset_password_expiration", "salt", "hash", "login_attempts", "lock_until") FROM stdin;
3	Muhammad	2025-08-16 05:43:06.587+00	2025-08-16 05:43:06.104+00	mhmd@zid.sa	\N	\N	98015496b4164cf0fbec14f882423a187dd37113cad1ef8d0b4b3b16f2afd52c	9c13c853e94e3758fca6ff10185f1f27c7f3e24e1aab326c144f99ba5b77cbe69dd8a503969f53ac5c0dd3fef41e98af30fcb1c9e22bea6bf49a2b9e661de9af99b06a97d1af0c532022cd6a15229dfe4a0621bc04ad4be7dbfe59b29a82a26bb4cc96da95b2a693f2d2fa942809950989fa56bc4ddd68f693f5292cd81c9bbb5bba46792c480ec30a9dae61f674579a2e1ed5c5a769f53d0d137b677e7d8e581a44ae0322b7b7923f39ded4fa02984fe818258861f2020b0dc9f476fe912fa503343077b607cd4bea58cd87e3eb482686506b6df7626da6d0648b2ec3cd3f9b7929d529b20bd98703739ba935359ec9ea664cb86d666dbd42a5eb166a2cd27299c9fd04a1eccd082e9235b84ce39374e78e94368ea510fa200ccad1b747800a416e423a8df1943fb8620388d3d723e5b3e5b4d25c3f4885223669102d24da2d6c1bd7f4f37f1fbcbe2fd20836be05d34af76e00c445c3a789a3184fd422210d2bcf70c502005a45dd5feb7eb32e427acac8d208ccd817829aa823117fde3549fbbacfddf967a07383dc39cb16dcc761c9828c4a5c4ad2ba8b4a86e71b3c765c744c1019607108563becd2d66368ae6c1f024f7d74ad861fa37722a0e6c741caed50b59a75e306bf48c4c2d6362e1ab1f2ec78287b025c795b848cd74c56d8ed97a4371f0c5dd843570e5824af20314ef5e45ef8f0976ef065a51ee61cd5aad2	0	\N
2	Yazeed	2025-08-21 16:03:06.694+00	2025-08-16 05:42:20.882+00	yazeed.busayyis@zid.sa	\N	\N	a49e823cb19987337fbfa0a04d971f7f7bbe3c6d19f0c1e4f08bb74d01b82b59	083ce935a78c859e6930af3704ac6b6ffb47f51b560c9289ad8f454b889ea4eafeb5c474f77df7a80768141baa7d7b9272d2dc110cad9908e27b51197da3f28718dd46d476e64fc868622121fd22acd2e998630518ffc071ec00254817ef849006232abbb58d4b29be15c815be5cf923c1146ee81f4374eec721ea670ab815fc640ff82fa6133d340644ab23c18bd1cd47a0b683bf775d1db6afc31650c08bf7fdb2d0875f4bf9e3fb53744032b9368f745b074dae1c48027716eb17fbcbb0df8924a5b463978ee0b3dbd4c31d1d0a05516c720d085c7c9051c62a590d41c6c11a24ff0d49d868d720db982d40829d5b9b5459f58d5267b630baa9d6e490ab37d2c659733f078851e5ae193468ac574cb8d551470f543fd1ca32308247de781ccee47f71c94b332afd109d01e5179297c5c42189f71dea62b846ee6bf59cea90c1ca668c899f09a12e0670bf95b28663ffcd68857afe174660b5b6e77739c09c10b4f57ff9bd358f76c38e3ff67568cf2bc5b98a2cfc910af93dfa5ff0af7c9622919746bb8cfd98925d6c46d41e3e20ddae07929bb7a969eeb67ffd90b100ab6420217c371728c13c76886ed3677d262be116fdfc2290739f68ef9bf4610f58d985fcb23294e1de7cfc23fb08adc84e60e571bf28bf2d7a16b5ce969b5d213df83a3b166705dde1372acfaa9f65aa2e460ba627795df8b38fb24e6f67df79c7	0	\N
4	Mohamed Hamzawi	2025-08-21 17:39:48.077+00	2025-08-21 17:39:22.478+00	mohamed.hamzawi@zid.sa	\N	\N	c1c01508d419ac4f0822ebb6328d3b458103a0531f26084fc21b20e7c094c1eb	d1419bb73cbc5816040f57e40d3373b8c475d50145ba1c9828c110172a1bebdab1c956e53c9bf0a2c1bff701cfac4b54f3fe2dd38fe5241ea7b43187d2517e31ca9662aa6bbce39fd431d149c561289f9a1d4d43135dae9d162bfb9b6e67960e01a7d33edc8f1d448ed297e52cb08bb95b15d1183a5dec752eee303c8d4ba755b2a605e3f748a385c286c7862919756e309fd9bd572cb71d03a4172e05c127f3caef9bf5733d423250d65a9625c02a8df86f3d8dadfb1407a3994f4ff260495efc247283de13a5382cb76730c0ddd5970b0ab66f80961f75c34af4edb3d3a3d1eb01ceaea95eafbcf49714715e54db77ec3b0ae12d9e04cf6fb0fd7ac8c9cad03ee44421248d14a1a74066d6b1804528c524cf802479ff04856fd1242472b2ee3db902b750e5db4df6570dd737765b3c597064efa977d45149ddb143051bcad701e90a3e80be1e3301065614968ecec210ca687f512c6c6bc7639b5de9a50085c48715064c3e80d95f9cfb8f7963d02b9a86093484080744f36d67d0c000b94f60080391389f57af2be11e3069b07d0fb7cde00941414cdcc0fa11513cc09ca2963cc2cd71e3206f33a6cdeb0ab7940b8b1d4e3297c62042ea9e31aad1bab474f7bb3d18baab94a071161ef7ba008c2b040b08f1a8eca3ed0193a316397ae03f00177c577d8b20e3384cd1b63b3f117888ae6a7e0fe3f862deb7090ae758d20d	0	\N
1	Omar	2025-11-03 14:12:37.294+00	2025-03-21 08:43:52.554+00	omar@byvalence.com	\N	\N	9bc337566b957d218f37c0c4575ace7b3e0e95ccd62e5841ad9109ae154f75eb	aa4582de4aa32c350279769e5ea86f137c2babf000d7237024da0fb7d9a43ca2d4b7fad1859095a28a46d85861758c1abc823b5ee9ec7f077e3e57cbf79b20c1b3d26eb423f345d4a9bdb4859dac8d1f684b5f98b25a0d46b2d598a96632abafe4f31a44746fb985255f1ce07632e087aec6181a51cdaea96f8ca50e25ad7e053abe7a39cb6d460a80a71e64771bfbeca24f0091fbe76529eaa8bf9df3ccc985912d60f279d9e4771efb805eb300c0519f4fb13ff43b0f500b014c3294a38e2fe04fc37c535ddce551cd9e0974cc6349f07d98c0c71ac72ac45fb8e49f8193706d22dbd05b7b384d5073d6721a5b2c083e67c0fe51da9659a1385d14e8fd515b9b3a6995402931d0d85d735a372021ff2a4b27fe2317d449796e68e968f2a7e44a898cf78223b143329eb4e62f77c4850acd63c52ed0da589a06e098dd9ee7b206be191fdc001e1c29977db9addc7335b334b1ae44ecde0b16875af2f3b88219477d30b13a3ed3315b7f67b30d57fcccf3ba474c0a1fedd7c9a8b14fad94534f419d3f087aea1bf663f01d56c1fd8538f7c4c753b91ebcbc109a29eb733138feb54e39f703bf0f90eddfda15c584e93c5a1208f254bfdcb00014759103b4764b603b8f6d5e53397910be253bf259ae57dc325dbe14a0d623cb976798889f39ecf2705cf90191bdb2d471b5f5f500f321fdb26ed8eb7a0d92d5b1037b41e70b58	0	\N
\.


--
-- Data for Name: users_sessions; Type: TABLE DATA; Schema: public; Owner: -
--

COPY "public"."users_sessions" ("_order", "_parent_id", "id", "created_at", "expires_at") FROM stdin;
1	2	9ffd8726-11ba-4954-bb5e-60da1f42a89c	2025-08-21 16:03:06.691+00	2025-08-21 18:03:06.691+00
1	1	4df63cd6-cd7d-4bf5-8472-572593500a80	2025-11-03 14:12:15.136+00	2025-11-03 16:12:37.293+00
\.


--
-- Name: _pages_v_blocks_archive_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_archive_id_seq"', 1, false);


--
-- Name: _pages_v_blocks_content_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_content_id_seq"', 2863, true);


--
-- Name: _pages_v_blocks_content_list_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_content_list_id_seq"', 9420, true);


--
-- Name: _pages_v_blocks_content_list_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_content_list_locales_id_seq"', 9552, true);


--
-- Name: _pages_v_blocks_cta_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_cta_id_seq"', 1, false);


--
-- Name: _pages_v_blocks_cta_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_cta_links_id_seq"', 1, false);


--
-- Name: _pages_v_blocks_cta_links_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_cta_links_locales_id_seq"', 1, false);


--
-- Name: _pages_v_blocks_faq_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_faq_block_id_seq"', 251, true);


--
-- Name: _pages_v_blocks_faq_block_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_faq_block_links_id_seq"', 189, true);


--
-- Name: _pages_v_blocks_faq_block_links_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_faq_block_links_locales_id_seq"', 181, true);


--
-- Name: _pages_v_blocks_form_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_form_block_id_seq"', 271, true);


--
-- Name: _pages_v_blocks_logo_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_logo_block_id_seq"', 824, true);


--
-- Name: _pages_v_blocks_media_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_media_block_id_seq"', 1, false);


--
-- Name: _pages_v_blocks_pricing_block_additional_features_featur_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_pricing_block_additional_features_featur_id_seq"', 2769, true);


--
-- Name: _pages_v_blocks_pricing_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_pricing_block_id_seq"', 680, true);


--
-- Name: _pages_v_blocks_pricing_block_pricing_items_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_pricing_block_pricing_items_id_seq"', 2483, true);


--
-- Name: _pages_v_blocks_stats_block_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_stats_block_id_seq"', 753, true);


--
-- Name: _pages_v_blocks_stats_block_list_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_blocks_stats_block_list_id_seq"', 2209, true);


--
-- Name: _pages_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_id_seq"', 17, true);


--
-- Name: _pages_v_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_locales_id_seq"', 2096, true);


--
-- Name: _pages_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_rels_id_seq"', 3885, true);


--
-- Name: _pages_v_version_hero_links_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_version_hero_links_id_seq"', 1032, true);


--
-- Name: _pages_v_version_hero_links_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_pages_v_version_hero_links_locales_id_seq"', 1030, true);


--
-- Name: _posts_v_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_posts_v_id_seq"', 2, true);


--
-- Name: _posts_v_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_posts_v_locales_id_seq"', 36, true);


--
-- Name: _posts_v_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_posts_v_rels_id_seq"', 1, false);


--
-- Name: _posts_v_version_populated_authors_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."_posts_v_version_populated_authors_id_seq"', 1, false);


--
-- Name: categories_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."categories_id_seq"', 1, false);


--
-- Name: faq_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."faq_id_seq"', 7, true);


--
-- Name: faq_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."faq_locales_id_seq"', 7, true);


--
-- Name: footer_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."footer_id_seq"', 1, false);


--
-- Name: footer_nav_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."footer_nav_items_locales_id_seq"', 1, false);


--
-- Name: footer_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."footer_rels_id_seq"', 1, false);


--
-- Name: form_submissions_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."form_submissions_id_seq"', 2, true);


--
-- Name: forms_blocks_checkbox_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."forms_blocks_checkbox_locales_id_seq"', 1, false);


--
-- Name: forms_blocks_country_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."forms_blocks_country_locales_id_seq"', 1, false);


--
-- Name: forms_blocks_email_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."forms_blocks_email_locales_id_seq"', 1, false);


--
-- Name: forms_blocks_message_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."forms_blocks_message_locales_id_seq"', 1, false);


--
-- Name: forms_blocks_number_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."forms_blocks_number_locales_id_seq"', 2, true);


--
-- Name: forms_blocks_select_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."forms_blocks_select_locales_id_seq"', 1, false);


--
-- Name: forms_blocks_select_options_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."forms_blocks_select_options_locales_id_seq"', 1, false);


--
-- Name: forms_blocks_state_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."forms_blocks_state_locales_id_seq"', 1, false);


--
-- Name: forms_blocks_text_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."forms_blocks_text_locales_id_seq"', 4, true);


--
-- Name: forms_blocks_textarea_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."forms_blocks_textarea_locales_id_seq"', 1, false);


--
-- Name: forms_emails_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."forms_emails_locales_id_seq"', 1, false);


--
-- Name: forms_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."forms_id_seq"', 1, true);


--
-- Name: forms_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."forms_locales_id_seq"', 2, true);


--
-- Name: header_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."header_id_seq"', 1, true);


--
-- Name: header_nav_items_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."header_nav_items_locales_id_seq"', 6, true);


--
-- Name: header_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."header_rels_id_seq"', 6, true);


--
-- Name: media_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."media_id_seq"', 36, true);


--
-- Name: pages_blocks_content_list_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."pages_blocks_content_list_locales_id_seq"', 128, true);


--
-- Name: pages_blocks_cta_links_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."pages_blocks_cta_links_locales_id_seq"', 1, false);


--
-- Name: pages_blocks_faq_block_links_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."pages_blocks_faq_block_links_locales_id_seq"', 8, true);


--
-- Name: pages_hero_links_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."pages_hero_links_locales_id_seq"', 8, true);


--
-- Name: pages_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."pages_id_seq"', 1, true);


--
-- Name: pages_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."pages_locales_id_seq"', 16, true);


--
-- Name: pages_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."pages_rels_id_seq"', 132, true);


--
-- Name: payload_jobs_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."payload_jobs_id_seq"', 1, false);


--
-- Name: payload_locked_documents_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."payload_locked_documents_id_seq"', 472, true);


--
-- Name: payload_locked_documents_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."payload_locked_documents_rels_id_seq"', 939, true);


--
-- Name: payload_migrations_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."payload_migrations_id_seq"', 5, true);


--
-- Name: payload_preferences_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."payload_preferences_id_seq"', 27, true);


--
-- Name: payload_preferences_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."payload_preferences_rels_id_seq"', 164, true);


--
-- Name: posts_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."posts_id_seq"', 1, true);


--
-- Name: posts_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."posts_locales_id_seq"', 1, false);


--
-- Name: posts_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."posts_rels_id_seq"', 1, false);


--
-- Name: redirects_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."redirects_id_seq"', 1, false);


--
-- Name: redirects_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."redirects_rels_id_seq"', 1, false);


--
-- Name: search_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."search_id_seq"', 1, false);


--
-- Name: search_locales_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."search_locales_id_seq"', 1, false);


--
-- Name: search_rels_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."search_rels_id_seq"', 1, false);


--
-- Name: users_id_seq; Type: SEQUENCE SET; Schema: public; Owner: -
--

SELECT pg_catalog.setval('"public"."users_id_seq"', 4, true);


--
-- Name: _pages_v_blocks_archive _pages_v_blocks_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_archive"
    ADD CONSTRAINT "_pages_v_blocks_archive_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_content_list_locales _pages_v_blocks_content_list_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_content_list_locales"
    ADD CONSTRAINT "_pages_v_blocks_content_list_locales_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_content_list _pages_v_blocks_content_list_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_content_list"
    ADD CONSTRAINT "_pages_v_blocks_content_list_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_content"
    ADD CONSTRAINT "_pages_v_blocks_content_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_cta_links_locales _pages_v_blocks_cta_links_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_cta_links_locales"
    ADD CONSTRAINT "_pages_v_blocks_cta_links_locales_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_cta_links _pages_v_blocks_cta_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_cta_links"
    ADD CONSTRAINT "_pages_v_blocks_cta_links_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_cta _pages_v_blocks_cta_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_cta"
    ADD CONSTRAINT "_pages_v_blocks_cta_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_faq_block_links_locales _pages_v_blocks_faq_block_links_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_faq_block_links_locales"
    ADD CONSTRAINT "_pages_v_blocks_faq_block_links_locales_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_faq_block_links _pages_v_blocks_faq_block_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_faq_block_links"
    ADD CONSTRAINT "_pages_v_blocks_faq_block_links_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_faq_block _pages_v_blocks_faq_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_faq_block"
    ADD CONSTRAINT "_pages_v_blocks_faq_block_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_form_block"
    ADD CONSTRAINT "_pages_v_blocks_form_block_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_logo_block _pages_v_blocks_logo_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_logo_block"
    ADD CONSTRAINT "_pages_v_blocks_logo_block_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_media_block"
    ADD CONSTRAINT "_pages_v_blocks_media_block_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_pricing_block_additional_features_features _pages_v_blocks_pricing_block_additional_features_features_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_pricing_block_additional_features_features"
    ADD CONSTRAINT "_pages_v_blocks_pricing_block_additional_features_features_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_pricing_block _pages_v_blocks_pricing_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_pricing_block"
    ADD CONSTRAINT "_pages_v_blocks_pricing_block_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_pricing_block_base_features_features _pages_v_blocks_pricing_block_pricing_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_pricing_block_base_features_features"
    ADD CONSTRAINT "_pages_v_blocks_pricing_block_pricing_items_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_stats_block_list _pages_v_blocks_stats_block_list_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_stats_block_list"
    ADD CONSTRAINT "_pages_v_blocks_stats_block_list_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_blocks_stats_block _pages_v_blocks_stats_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_stats_block"
    ADD CONSTRAINT "_pages_v_blocks_stats_block_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_locales _pages_v_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_locales"
    ADD CONSTRAINT "_pages_v_locales_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v _pages_v_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v"
    ADD CONSTRAINT "_pages_v_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_rels _pages_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_rels"
    ADD CONSTRAINT "_pages_v_rels_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_version_hero_links_locales _pages_v_version_hero_links_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_version_hero_links_locales"
    ADD CONSTRAINT "_pages_v_version_hero_links_locales_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_version_hero_links"
    ADD CONSTRAINT "_pages_v_version_hero_links_pkey" PRIMARY KEY ("id");


--
-- Name: _posts_v_locales _posts_v_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v_locales"
    ADD CONSTRAINT "_posts_v_locales_pkey" PRIMARY KEY ("id");


--
-- Name: _posts_v _posts_v_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v"
    ADD CONSTRAINT "_posts_v_pkey" PRIMARY KEY ("id");


--
-- Name: _posts_v_rels _posts_v_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v_rels"
    ADD CONSTRAINT "_posts_v_rels_pkey" PRIMARY KEY ("id");


--
-- Name: _posts_v_version_populated_authors _posts_v_version_populated_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v_version_populated_authors"
    ADD CONSTRAINT "_posts_v_version_populated_authors_pkey" PRIMARY KEY ("id");


--
-- Name: categories_breadcrumbs categories_breadcrumbs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."categories_breadcrumbs"
    ADD CONSTRAINT "categories_breadcrumbs_pkey" PRIMARY KEY ("id");


--
-- Name: categories categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."categories"
    ADD CONSTRAINT "categories_pkey" PRIMARY KEY ("id");


--
-- Name: faq_locales faq_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."faq_locales"
    ADD CONSTRAINT "faq_locales_pkey" PRIMARY KEY ("id");


--
-- Name: faq faq_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."faq"
    ADD CONSTRAINT "faq_pkey" PRIMARY KEY ("id");


--
-- Name: footer_nav_items_locales footer_nav_items_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."footer_nav_items_locales"
    ADD CONSTRAINT "footer_nav_items_locales_pkey" PRIMARY KEY ("id");


--
-- Name: footer_nav_items footer_nav_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."footer_nav_items"
    ADD CONSTRAINT "footer_nav_items_pkey" PRIMARY KEY ("id");


--
-- Name: footer footer_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."footer"
    ADD CONSTRAINT "footer_pkey" PRIMARY KEY ("id");


--
-- Name: footer_rels footer_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."footer_rels"
    ADD CONSTRAINT "footer_rels_pkey" PRIMARY KEY ("id");


--
-- Name: form_submissions form_submissions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."form_submissions"
    ADD CONSTRAINT "form_submissions_pkey" PRIMARY KEY ("id");


--
-- Name: form_submissions_submission_data form_submissions_submission_data_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."form_submissions_submission_data"
    ADD CONSTRAINT "form_submissions_submission_data_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_checkbox_locales forms_blocks_checkbox_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_checkbox_locales"
    ADD CONSTRAINT "forms_blocks_checkbox_locales_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_checkbox forms_blocks_checkbox_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_checkbox"
    ADD CONSTRAINT "forms_blocks_checkbox_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_country_locales forms_blocks_country_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_country_locales"
    ADD CONSTRAINT "forms_blocks_country_locales_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_country forms_blocks_country_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_country"
    ADD CONSTRAINT "forms_blocks_country_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_email_locales forms_blocks_email_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_email_locales"
    ADD CONSTRAINT "forms_blocks_email_locales_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_email forms_blocks_email_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_email"
    ADD CONSTRAINT "forms_blocks_email_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_message_locales forms_blocks_message_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_message_locales"
    ADD CONSTRAINT "forms_blocks_message_locales_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_message forms_blocks_message_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_message"
    ADD CONSTRAINT "forms_blocks_message_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_number_locales forms_blocks_number_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_number_locales"
    ADD CONSTRAINT "forms_blocks_number_locales_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_number forms_blocks_number_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_number"
    ADD CONSTRAINT "forms_blocks_number_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_select_locales forms_blocks_select_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_select_locales"
    ADD CONSTRAINT "forms_blocks_select_locales_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_select_options_locales forms_blocks_select_options_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_select_options_locales"
    ADD CONSTRAINT "forms_blocks_select_options_locales_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_select_options forms_blocks_select_options_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_select_options"
    ADD CONSTRAINT "forms_blocks_select_options_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_select forms_blocks_select_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_select"
    ADD CONSTRAINT "forms_blocks_select_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_state_locales forms_blocks_state_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_state_locales"
    ADD CONSTRAINT "forms_blocks_state_locales_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_state forms_blocks_state_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_state"
    ADD CONSTRAINT "forms_blocks_state_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_text_locales forms_blocks_text_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_text_locales"
    ADD CONSTRAINT "forms_blocks_text_locales_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_text forms_blocks_text_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_text"
    ADD CONSTRAINT "forms_blocks_text_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_textarea_locales forms_blocks_textarea_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_textarea_locales"
    ADD CONSTRAINT "forms_blocks_textarea_locales_pkey" PRIMARY KEY ("id");


--
-- Name: forms_blocks_textarea forms_blocks_textarea_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_textarea"
    ADD CONSTRAINT "forms_blocks_textarea_pkey" PRIMARY KEY ("id");


--
-- Name: forms_emails_locales forms_emails_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_emails_locales"
    ADD CONSTRAINT "forms_emails_locales_pkey" PRIMARY KEY ("id");


--
-- Name: forms_emails forms_emails_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_emails"
    ADD CONSTRAINT "forms_emails_pkey" PRIMARY KEY ("id");


--
-- Name: forms_locales forms_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_locales"
    ADD CONSTRAINT "forms_locales_pkey" PRIMARY KEY ("id");


--
-- Name: forms forms_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms"
    ADD CONSTRAINT "forms_pkey" PRIMARY KEY ("id");


--
-- Name: header_nav_items_locales header_nav_items_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."header_nav_items_locales"
    ADD CONSTRAINT "header_nav_items_locales_pkey" PRIMARY KEY ("id");


--
-- Name: header_nav_items header_nav_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."header_nav_items"
    ADD CONSTRAINT "header_nav_items_pkey" PRIMARY KEY ("id");


--
-- Name: header header_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."header"
    ADD CONSTRAINT "header_pkey" PRIMARY KEY ("id");


--
-- Name: header_rels header_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."header_rels"
    ADD CONSTRAINT "header_rels_pkey" PRIMARY KEY ("id");


--
-- Name: media media_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."media"
    ADD CONSTRAINT "media_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_archive pages_blocks_archive_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_archive"
    ADD CONSTRAINT "pages_blocks_archive_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_content_list_locales pages_blocks_content_list_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_content_list_locales"
    ADD CONSTRAINT "pages_blocks_content_list_locales_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_content_list pages_blocks_content_list_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_content_list"
    ADD CONSTRAINT "pages_blocks_content_list_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_content pages_blocks_content_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_content"
    ADD CONSTRAINT "pages_blocks_content_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_cta_links_locales pages_blocks_cta_links_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_cta_links_locales"
    ADD CONSTRAINT "pages_blocks_cta_links_locales_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_cta_links pages_blocks_cta_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_cta_links"
    ADD CONSTRAINT "pages_blocks_cta_links_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_cta pages_blocks_cta_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_cta"
    ADD CONSTRAINT "pages_blocks_cta_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_faq_block_links_locales pages_blocks_faq_block_links_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_faq_block_links_locales"
    ADD CONSTRAINT "pages_blocks_faq_block_links_locales_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_faq_block_links pages_blocks_faq_block_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_faq_block_links"
    ADD CONSTRAINT "pages_blocks_faq_block_links_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_faq_block pages_blocks_faq_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_faq_block"
    ADD CONSTRAINT "pages_blocks_faq_block_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_form_block pages_blocks_form_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_form_block"
    ADD CONSTRAINT "pages_blocks_form_block_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_logo_block pages_blocks_logo_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_logo_block"
    ADD CONSTRAINT "pages_blocks_logo_block_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_media_block pages_blocks_media_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_media_block"
    ADD CONSTRAINT "pages_blocks_media_block_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_pricing_block_additional_features_features pages_blocks_pricing_block_additional_features_features_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_pricing_block_additional_features_features"
    ADD CONSTRAINT "pages_blocks_pricing_block_additional_features_features_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_pricing_block pages_blocks_pricing_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_pricing_block"
    ADD CONSTRAINT "pages_blocks_pricing_block_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_pricing_block_base_features_features pages_blocks_pricing_block_pricing_items_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_pricing_block_base_features_features"
    ADD CONSTRAINT "pages_blocks_pricing_block_pricing_items_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_stats_block_list pages_blocks_stats_block_list_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_stats_block_list"
    ADD CONSTRAINT "pages_blocks_stats_block_list_pkey" PRIMARY KEY ("id");


--
-- Name: pages_blocks_stats_block pages_blocks_stats_block_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_stats_block"
    ADD CONSTRAINT "pages_blocks_stats_block_pkey" PRIMARY KEY ("id");


--
-- Name: pages_hero_links_locales pages_hero_links_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_hero_links_locales"
    ADD CONSTRAINT "pages_hero_links_locales_pkey" PRIMARY KEY ("id");


--
-- Name: pages_hero_links pages_hero_links_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_hero_links"
    ADD CONSTRAINT "pages_hero_links_pkey" PRIMARY KEY ("id");


--
-- Name: pages_locales pages_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_locales"
    ADD CONSTRAINT "pages_locales_pkey" PRIMARY KEY ("id");


--
-- Name: pages pages_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages"
    ADD CONSTRAINT "pages_pkey" PRIMARY KEY ("id");


--
-- Name: pages_rels pages_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_rels"
    ADD CONSTRAINT "pages_rels_pkey" PRIMARY KEY ("id");


--
-- Name: payload_jobs_log payload_jobs_log_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_jobs_log"
    ADD CONSTRAINT "payload_jobs_log_pkey" PRIMARY KEY ("id");


--
-- Name: payload_jobs payload_jobs_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_jobs"
    ADD CONSTRAINT "payload_jobs_pkey" PRIMARY KEY ("id");


--
-- Name: payload_locked_documents payload_locked_documents_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents"
    ADD CONSTRAINT "payload_locked_documents_pkey" PRIMARY KEY ("id");


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_pkey" PRIMARY KEY ("id");


--
-- Name: payload_migrations payload_migrations_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_migrations"
    ADD CONSTRAINT "payload_migrations_pkey" PRIMARY KEY ("id");


--
-- Name: payload_preferences payload_preferences_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_preferences"
    ADD CONSTRAINT "payload_preferences_pkey" PRIMARY KEY ("id");


--
-- Name: payload_preferences_rels payload_preferences_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_preferences_rels"
    ADD CONSTRAINT "payload_preferences_rels_pkey" PRIMARY KEY ("id");


--
-- Name: posts_locales posts_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts_locales"
    ADD CONSTRAINT "posts_locales_pkey" PRIMARY KEY ("id");


--
-- Name: posts posts_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts"
    ADD CONSTRAINT "posts_pkey" PRIMARY KEY ("id");


--
-- Name: posts_populated_authors posts_populated_authors_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts_populated_authors"
    ADD CONSTRAINT "posts_populated_authors_pkey" PRIMARY KEY ("id");


--
-- Name: posts_rels posts_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts_rels"
    ADD CONSTRAINT "posts_rels_pkey" PRIMARY KEY ("id");


--
-- Name: redirects redirects_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."redirects"
    ADD CONSTRAINT "redirects_pkey" PRIMARY KEY ("id");


--
-- Name: redirects_rels redirects_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."redirects_rels"
    ADD CONSTRAINT "redirects_rels_pkey" PRIMARY KEY ("id");


--
-- Name: search_categories search_categories_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."search_categories"
    ADD CONSTRAINT "search_categories_pkey" PRIMARY KEY ("id");


--
-- Name: search_locales search_locales_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."search_locales"
    ADD CONSTRAINT "search_locales_pkey" PRIMARY KEY ("id");


--
-- Name: search search_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."search"
    ADD CONSTRAINT "search_pkey" PRIMARY KEY ("id");


--
-- Name: search_rels search_rels_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."search_rels"
    ADD CONSTRAINT "search_rels_pkey" PRIMARY KEY ("id");


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."users"
    ADD CONSTRAINT "users_pkey" PRIMARY KEY ("id");


--
-- Name: users_sessions users_sessions_pkey; Type: CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."users_sessions"
    ADD CONSTRAINT "users_sessions_pkey" PRIMARY KEY ("id");


--
-- Name: _pages_v_autosave_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_autosave_idx" ON "public"."_pages_v" USING "btree" ("autosave");


--
-- Name: _pages_v_blocks_archive_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_archive_order_idx" ON "public"."_pages_v_blocks_archive" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_archive_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_archive_parent_id_idx" ON "public"."_pages_v_blocks_archive" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_archive_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_archive_path_idx" ON "public"."_pages_v_blocks_archive" USING "btree" ("_path");


--
-- Name: _pages_v_blocks_content_list_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "_pages_v_blocks_content_list_locales_locale_parent_id_unique" ON "public"."_pages_v_blocks_content_list_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: _pages_v_blocks_content_list_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_content_list_media_idx" ON "public"."_pages_v_blocks_content_list" USING "btree" ("media_id");


--
-- Name: _pages_v_blocks_content_list_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_content_list_order_idx" ON "public"."_pages_v_blocks_content_list" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_content_list_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_content_list_parent_id_idx" ON "public"."_pages_v_blocks_content_list" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_content_order_idx" ON "public"."_pages_v_blocks_content" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_content_parent_id_idx" ON "public"."_pages_v_blocks_content" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_content_path_idx" ON "public"."_pages_v_blocks_content" USING "btree" ("_path");


--
-- Name: _pages_v_blocks_cta_links_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "_pages_v_blocks_cta_links_locales_locale_parent_id_unique" ON "public"."_pages_v_blocks_cta_links_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: _pages_v_blocks_cta_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_cta_links_order_idx" ON "public"."_pages_v_blocks_cta_links" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_cta_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_cta_links_parent_id_idx" ON "public"."_pages_v_blocks_cta_links" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_cta_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_cta_order_idx" ON "public"."_pages_v_blocks_cta" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_cta_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_cta_parent_id_idx" ON "public"."_pages_v_blocks_cta" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_cta_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_cta_path_idx" ON "public"."_pages_v_blocks_cta" USING "btree" ("_path");


--
-- Name: _pages_v_blocks_faq_block_links_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "_pages_v_blocks_faq_block_links_locales_locale_parent_id_unique" ON "public"."_pages_v_blocks_faq_block_links_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: _pages_v_blocks_faq_block_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_faq_block_links_order_idx" ON "public"."_pages_v_blocks_faq_block_links" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_faq_block_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_faq_block_links_parent_id_idx" ON "public"."_pages_v_blocks_faq_block_links" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_faq_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_faq_block_order_idx" ON "public"."_pages_v_blocks_faq_block" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_faq_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_faq_block_parent_id_idx" ON "public"."_pages_v_blocks_faq_block" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_faq_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_faq_block_path_idx" ON "public"."_pages_v_blocks_faq_block" USING "btree" ("_path");


--
-- Name: _pages_v_blocks_form_block_form_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_form_block_form_idx" ON "public"."_pages_v_blocks_form_block" USING "btree" ("form_id");


--
-- Name: _pages_v_blocks_form_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_form_block_order_idx" ON "public"."_pages_v_blocks_form_block" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_form_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_form_block_parent_id_idx" ON "public"."_pages_v_blocks_form_block" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_form_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_form_block_path_idx" ON "public"."_pages_v_blocks_form_block" USING "btree" ("_path");


--
-- Name: _pages_v_blocks_logo_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_logo_block_order_idx" ON "public"."_pages_v_blocks_logo_block" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_logo_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_logo_block_parent_id_idx" ON "public"."_pages_v_blocks_logo_block" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_logo_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_logo_block_path_idx" ON "public"."_pages_v_blocks_logo_block" USING "btree" ("_path");


--
-- Name: _pages_v_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_media_block_media_idx" ON "public"."_pages_v_blocks_media_block" USING "btree" ("media_id");


--
-- Name: _pages_v_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_media_block_order_idx" ON "public"."_pages_v_blocks_media_block" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_media_block_parent_id_idx" ON "public"."_pages_v_blocks_media_block" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_media_block_path_idx" ON "public"."_pages_v_blocks_media_block" USING "btree" ("_path");


--
-- Name: _pages_v_blocks_pricing_block_additional_features_features_orde; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_pricing_block_additional_features_features_orde" ON "public"."_pages_v_blocks_pricing_block_additional_features_features" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_pricing_block_additional_features_features_pare; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_pricing_block_additional_features_features_pare" ON "public"."_pages_v_blocks_pricing_block_additional_features_features" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_pricing_block_base_features_features_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_pricing_block_base_features_features_order_idx" ON "public"."_pages_v_blocks_pricing_block_base_features_features" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_pricing_block_base_features_features_parent_id_; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_pricing_block_base_features_features_parent_id_" ON "public"."_pages_v_blocks_pricing_block_base_features_features" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_pricing_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_pricing_block_order_idx" ON "public"."_pages_v_blocks_pricing_block" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_pricing_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_pricing_block_parent_id_idx" ON "public"."_pages_v_blocks_pricing_block" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_pricing_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_pricing_block_path_idx" ON "public"."_pages_v_blocks_pricing_block" USING "btree" ("_path");


--
-- Name: _pages_v_blocks_stats_block_list_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_stats_block_list_order_idx" ON "public"."_pages_v_blocks_stats_block_list" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_stats_block_list_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_stats_block_list_parent_id_idx" ON "public"."_pages_v_blocks_stats_block_list" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_stats_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_stats_block_order_idx" ON "public"."_pages_v_blocks_stats_block" USING "btree" ("_order");


--
-- Name: _pages_v_blocks_stats_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_stats_block_parent_id_idx" ON "public"."_pages_v_blocks_stats_block" USING "btree" ("_parent_id");


--
-- Name: _pages_v_blocks_stats_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_blocks_stats_block_path_idx" ON "public"."_pages_v_blocks_stats_block" USING "btree" ("_path");


--
-- Name: _pages_v_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_created_at_idx" ON "public"."_pages_v" USING "btree" ("created_at");


--
-- Name: _pages_v_latest_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_latest_idx" ON "public"."_pages_v" USING "btree" ("latest");


--
-- Name: _pages_v_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "_pages_v_locales_locale_parent_id_unique" ON "public"."_pages_v_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: _pages_v_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_parent_idx" ON "public"."_pages_v" USING "btree" ("parent_id");


--
-- Name: _pages_v_published_locale_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_published_locale_idx" ON "public"."_pages_v" USING "btree" ("published_locale");


--
-- Name: _pages_v_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_rels_categories_id_idx" ON "public"."_pages_v_rels" USING "btree" ("categories_id");


--
-- Name: _pages_v_rels_faq_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_rels_faq_id_idx" ON "public"."_pages_v_rels" USING "btree" ("faq_id");


--
-- Name: _pages_v_rels_media_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_rels_media_id_idx" ON "public"."_pages_v_rels" USING "btree" ("media_id");


--
-- Name: _pages_v_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_rels_order_idx" ON "public"."_pages_v_rels" USING "btree" ("order");


--
-- Name: _pages_v_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_rels_pages_id_idx" ON "public"."_pages_v_rels" USING "btree" ("pages_id");


--
-- Name: _pages_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_rels_parent_idx" ON "public"."_pages_v_rels" USING "btree" ("parent_id");


--
-- Name: _pages_v_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_rels_path_idx" ON "public"."_pages_v_rels" USING "btree" ("path");


--
-- Name: _pages_v_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_rels_posts_id_idx" ON "public"."_pages_v_rels" USING "btree" ("posts_id");


--
-- Name: _pages_v_snapshot_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_snapshot_idx" ON "public"."_pages_v" USING "btree" ("snapshot");


--
-- Name: _pages_v_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_updated_at_idx" ON "public"."_pages_v" USING "btree" ("updated_at");


--
-- Name: _pages_v_version_hero_links_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "_pages_v_version_hero_links_locales_locale_parent_id_unique" ON "public"."_pages_v_version_hero_links_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: _pages_v_version_hero_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_version_hero_links_order_idx" ON "public"."_pages_v_version_hero_links" USING "btree" ("_order");


--
-- Name: _pages_v_version_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_version_hero_links_parent_id_idx" ON "public"."_pages_v_version_hero_links" USING "btree" ("_parent_id");


--
-- Name: _pages_v_version_hero_version_hero_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_version_hero_version_hero_media_idx" ON "public"."_pages_v_locales" USING "btree" ("version_hero_media_id", "_locale");


--
-- Name: _pages_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_version_meta_version_meta_image_idx" ON "public"."_pages_v_locales" USING "btree" ("version_meta_image_id", "_locale");


--
-- Name: _pages_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_version_version__status_idx" ON "public"."_pages_v" USING "btree" ("version__status");


--
-- Name: _pages_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_version_version_created_at_idx" ON "public"."_pages_v" USING "btree" ("version_created_at");


--
-- Name: _pages_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_version_version_slug_idx" ON "public"."_pages_v" USING "btree" ("version_slug");


--
-- Name: _pages_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_pages_v_version_version_updated_at_idx" ON "public"."_pages_v" USING "btree" ("version_updated_at");


--
-- Name: _posts_v_autosave_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_autosave_idx" ON "public"."_posts_v" USING "btree" ("autosave");


--
-- Name: _posts_v_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_created_at_idx" ON "public"."_posts_v" USING "btree" ("created_at");


--
-- Name: _posts_v_latest_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_latest_idx" ON "public"."_posts_v" USING "btree" ("latest");


--
-- Name: _posts_v_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "_posts_v_locales_locale_parent_id_unique" ON "public"."_posts_v_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: _posts_v_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_parent_idx" ON "public"."_posts_v" USING "btree" ("parent_id");


--
-- Name: _posts_v_published_locale_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_published_locale_idx" ON "public"."_posts_v" USING "btree" ("published_locale");


--
-- Name: _posts_v_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_rels_categories_id_idx" ON "public"."_posts_v_rels" USING "btree" ("categories_id");


--
-- Name: _posts_v_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_rels_order_idx" ON "public"."_posts_v_rels" USING "btree" ("order");


--
-- Name: _posts_v_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_rels_parent_idx" ON "public"."_posts_v_rels" USING "btree" ("parent_id");


--
-- Name: _posts_v_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_rels_path_idx" ON "public"."_posts_v_rels" USING "btree" ("path");


--
-- Name: _posts_v_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_rels_posts_id_idx" ON "public"."_posts_v_rels" USING "btree" ("posts_id");


--
-- Name: _posts_v_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_rels_users_id_idx" ON "public"."_posts_v_rels" USING "btree" ("users_id");


--
-- Name: _posts_v_snapshot_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_snapshot_idx" ON "public"."_posts_v" USING "btree" ("snapshot");


--
-- Name: _posts_v_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_updated_at_idx" ON "public"."_posts_v" USING "btree" ("updated_at");


--
-- Name: _posts_v_version_meta_version_meta_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_version_meta_version_meta_image_idx" ON "public"."_posts_v_locales" USING "btree" ("version_meta_image_id", "_locale");


--
-- Name: _posts_v_version_populated_authors_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_version_populated_authors_order_idx" ON "public"."_posts_v_version_populated_authors" USING "btree" ("_order");


--
-- Name: _posts_v_version_populated_authors_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_version_populated_authors_parent_id_idx" ON "public"."_posts_v_version_populated_authors" USING "btree" ("_parent_id");


--
-- Name: _posts_v_version_version__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_version_version__status_idx" ON "public"."_posts_v" USING "btree" ("version__status");


--
-- Name: _posts_v_version_version_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_version_version_created_at_idx" ON "public"."_posts_v" USING "btree" ("version_created_at");


--
-- Name: _posts_v_version_version_hero_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_version_version_hero_image_idx" ON "public"."_posts_v" USING "btree" ("version_hero_image_id");


--
-- Name: _posts_v_version_version_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_version_version_slug_idx" ON "public"."_posts_v" USING "btree" ("version_slug");


--
-- Name: _posts_v_version_version_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "_posts_v_version_version_updated_at_idx" ON "public"."_posts_v" USING "btree" ("version_updated_at");


--
-- Name: categories_breadcrumbs_doc_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "categories_breadcrumbs_doc_idx" ON "public"."categories_breadcrumbs" USING "btree" ("doc_id");


--
-- Name: categories_breadcrumbs_locale_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "categories_breadcrumbs_locale_idx" ON "public"."categories_breadcrumbs" USING "btree" ("_locale");


--
-- Name: categories_breadcrumbs_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "categories_breadcrumbs_order_idx" ON "public"."categories_breadcrumbs" USING "btree" ("_order");


--
-- Name: categories_breadcrumbs_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "categories_breadcrumbs_parent_id_idx" ON "public"."categories_breadcrumbs" USING "btree" ("_parent_id");


--
-- Name: categories_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "categories_created_at_idx" ON "public"."categories" USING "btree" ("created_at");


--
-- Name: categories_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "categories_parent_idx" ON "public"."categories" USING "btree" ("parent_id");


--
-- Name: categories_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "categories_slug_idx" ON "public"."categories" USING "btree" ("slug");


--
-- Name: categories_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "categories_updated_at_idx" ON "public"."categories" USING "btree" ("updated_at");


--
-- Name: faq_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "faq_created_at_idx" ON "public"."faq" USING "btree" ("created_at");


--
-- Name: faq_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "faq_locales_locale_parent_id_unique" ON "public"."faq_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: faq_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "faq_updated_at_idx" ON "public"."faq" USING "btree" ("updated_at");


--
-- Name: footer_nav_items_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "footer_nav_items_locales_locale_parent_id_unique" ON "public"."footer_nav_items_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: footer_nav_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "footer_nav_items_order_idx" ON "public"."footer_nav_items" USING "btree" ("_order");


--
-- Name: footer_nav_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "footer_nav_items_parent_id_idx" ON "public"."footer_nav_items" USING "btree" ("_parent_id");


--
-- Name: footer_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "footer_rels_order_idx" ON "public"."footer_rels" USING "btree" ("order");


--
-- Name: footer_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "footer_rels_pages_id_idx" ON "public"."footer_rels" USING "btree" ("pages_id");


--
-- Name: footer_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "footer_rels_parent_idx" ON "public"."footer_rels" USING "btree" ("parent_id");


--
-- Name: footer_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "footer_rels_path_idx" ON "public"."footer_rels" USING "btree" ("path");


--
-- Name: footer_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "footer_rels_posts_id_idx" ON "public"."footer_rels" USING "btree" ("posts_id");


--
-- Name: form_submissions_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "form_submissions_created_at_idx" ON "public"."form_submissions" USING "btree" ("created_at");


--
-- Name: form_submissions_form_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "form_submissions_form_idx" ON "public"."form_submissions" USING "btree" ("form_id");


--
-- Name: form_submissions_submission_data_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "form_submissions_submission_data_order_idx" ON "public"."form_submissions_submission_data" USING "btree" ("_order");


--
-- Name: form_submissions_submission_data_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "form_submissions_submission_data_parent_id_idx" ON "public"."form_submissions_submission_data" USING "btree" ("_parent_id");


--
-- Name: form_submissions_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "form_submissions_updated_at_idx" ON "public"."form_submissions" USING "btree" ("updated_at");


--
-- Name: forms_blocks_checkbox_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "forms_blocks_checkbox_locales_locale_parent_id_unique" ON "public"."forms_blocks_checkbox_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: forms_blocks_checkbox_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_checkbox_order_idx" ON "public"."forms_blocks_checkbox" USING "btree" ("_order");


--
-- Name: forms_blocks_checkbox_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_checkbox_parent_id_idx" ON "public"."forms_blocks_checkbox" USING "btree" ("_parent_id");


--
-- Name: forms_blocks_checkbox_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_checkbox_path_idx" ON "public"."forms_blocks_checkbox" USING "btree" ("_path");


--
-- Name: forms_blocks_country_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "forms_blocks_country_locales_locale_parent_id_unique" ON "public"."forms_blocks_country_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: forms_blocks_country_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_country_order_idx" ON "public"."forms_blocks_country" USING "btree" ("_order");


--
-- Name: forms_blocks_country_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_country_parent_id_idx" ON "public"."forms_blocks_country" USING "btree" ("_parent_id");


--
-- Name: forms_blocks_country_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_country_path_idx" ON "public"."forms_blocks_country" USING "btree" ("_path");


--
-- Name: forms_blocks_email_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "forms_blocks_email_locales_locale_parent_id_unique" ON "public"."forms_blocks_email_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: forms_blocks_email_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_email_order_idx" ON "public"."forms_blocks_email" USING "btree" ("_order");


--
-- Name: forms_blocks_email_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_email_parent_id_idx" ON "public"."forms_blocks_email" USING "btree" ("_parent_id");


--
-- Name: forms_blocks_email_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_email_path_idx" ON "public"."forms_blocks_email" USING "btree" ("_path");


--
-- Name: forms_blocks_message_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "forms_blocks_message_locales_locale_parent_id_unique" ON "public"."forms_blocks_message_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: forms_blocks_message_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_message_order_idx" ON "public"."forms_blocks_message" USING "btree" ("_order");


--
-- Name: forms_blocks_message_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_message_parent_id_idx" ON "public"."forms_blocks_message" USING "btree" ("_parent_id");


--
-- Name: forms_blocks_message_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_message_path_idx" ON "public"."forms_blocks_message" USING "btree" ("_path");


--
-- Name: forms_blocks_number_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "forms_blocks_number_locales_locale_parent_id_unique" ON "public"."forms_blocks_number_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: forms_blocks_number_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_number_order_idx" ON "public"."forms_blocks_number" USING "btree" ("_order");


--
-- Name: forms_blocks_number_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_number_parent_id_idx" ON "public"."forms_blocks_number" USING "btree" ("_parent_id");


--
-- Name: forms_blocks_number_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_number_path_idx" ON "public"."forms_blocks_number" USING "btree" ("_path");


--
-- Name: forms_blocks_select_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "forms_blocks_select_locales_locale_parent_id_unique" ON "public"."forms_blocks_select_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: forms_blocks_select_options_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "forms_blocks_select_options_locales_locale_parent_id_unique" ON "public"."forms_blocks_select_options_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: forms_blocks_select_options_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_select_options_order_idx" ON "public"."forms_blocks_select_options" USING "btree" ("_order");


--
-- Name: forms_blocks_select_options_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_select_options_parent_id_idx" ON "public"."forms_blocks_select_options" USING "btree" ("_parent_id");


--
-- Name: forms_blocks_select_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_select_order_idx" ON "public"."forms_blocks_select" USING "btree" ("_order");


--
-- Name: forms_blocks_select_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_select_parent_id_idx" ON "public"."forms_blocks_select" USING "btree" ("_parent_id");


--
-- Name: forms_blocks_select_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_select_path_idx" ON "public"."forms_blocks_select" USING "btree" ("_path");


--
-- Name: forms_blocks_state_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "forms_blocks_state_locales_locale_parent_id_unique" ON "public"."forms_blocks_state_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: forms_blocks_state_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_state_order_idx" ON "public"."forms_blocks_state" USING "btree" ("_order");


--
-- Name: forms_blocks_state_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_state_parent_id_idx" ON "public"."forms_blocks_state" USING "btree" ("_parent_id");


--
-- Name: forms_blocks_state_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_state_path_idx" ON "public"."forms_blocks_state" USING "btree" ("_path");


--
-- Name: forms_blocks_text_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "forms_blocks_text_locales_locale_parent_id_unique" ON "public"."forms_blocks_text_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: forms_blocks_text_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_text_order_idx" ON "public"."forms_blocks_text" USING "btree" ("_order");


--
-- Name: forms_blocks_text_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_text_parent_id_idx" ON "public"."forms_blocks_text" USING "btree" ("_parent_id");


--
-- Name: forms_blocks_text_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_text_path_idx" ON "public"."forms_blocks_text" USING "btree" ("_path");


--
-- Name: forms_blocks_textarea_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "forms_blocks_textarea_locales_locale_parent_id_unique" ON "public"."forms_blocks_textarea_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: forms_blocks_textarea_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_textarea_order_idx" ON "public"."forms_blocks_textarea" USING "btree" ("_order");


--
-- Name: forms_blocks_textarea_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_textarea_parent_id_idx" ON "public"."forms_blocks_textarea" USING "btree" ("_parent_id");


--
-- Name: forms_blocks_textarea_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_blocks_textarea_path_idx" ON "public"."forms_blocks_textarea" USING "btree" ("_path");


--
-- Name: forms_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_created_at_idx" ON "public"."forms" USING "btree" ("created_at");


--
-- Name: forms_emails_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "forms_emails_locales_locale_parent_id_unique" ON "public"."forms_emails_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: forms_emails_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_emails_order_idx" ON "public"."forms_emails" USING "btree" ("_order");


--
-- Name: forms_emails_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_emails_parent_id_idx" ON "public"."forms_emails" USING "btree" ("_parent_id");


--
-- Name: forms_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "forms_locales_locale_parent_id_unique" ON "public"."forms_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: forms_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "forms_updated_at_idx" ON "public"."forms" USING "btree" ("updated_at");


--
-- Name: header_nav_items_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "header_nav_items_locales_locale_parent_id_unique" ON "public"."header_nav_items_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: header_nav_items_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "header_nav_items_order_idx" ON "public"."header_nav_items" USING "btree" ("_order");


--
-- Name: header_nav_items_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "header_nav_items_parent_id_idx" ON "public"."header_nav_items" USING "btree" ("_parent_id");


--
-- Name: header_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "header_rels_order_idx" ON "public"."header_rels" USING "btree" ("order");


--
-- Name: header_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "header_rels_pages_id_idx" ON "public"."header_rels" USING "btree" ("pages_id");


--
-- Name: header_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "header_rels_parent_idx" ON "public"."header_rels" USING "btree" ("parent_id");


--
-- Name: header_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "header_rels_path_idx" ON "public"."header_rels" USING "btree" ("path");


--
-- Name: header_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "header_rels_posts_id_idx" ON "public"."header_rels" USING "btree" ("posts_id");


--
-- Name: media_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "media_created_at_idx" ON "public"."media" USING "btree" ("created_at");


--
-- Name: media_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "media_filename_idx" ON "public"."media" USING "btree" ("filename");


--
-- Name: media_sizes_large_sizes_large_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "media_sizes_large_sizes_large_filename_idx" ON "public"."media" USING "btree" ("sizes_large_filename");


--
-- Name: media_sizes_medium_sizes_medium_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "media_sizes_medium_sizes_medium_filename_idx" ON "public"."media" USING "btree" ("sizes_medium_filename");


--
-- Name: media_sizes_og_sizes_og_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "media_sizes_og_sizes_og_filename_idx" ON "public"."media" USING "btree" ("sizes_og_filename");


--
-- Name: media_sizes_small_sizes_small_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "media_sizes_small_sizes_small_filename_idx" ON "public"."media" USING "btree" ("sizes_small_filename");


--
-- Name: media_sizes_square_sizes_square_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "media_sizes_square_sizes_square_filename_idx" ON "public"."media" USING "btree" ("sizes_square_filename");


--
-- Name: media_sizes_thumbnail_sizes_thumbnail_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "media_sizes_thumbnail_sizes_thumbnail_filename_idx" ON "public"."media" USING "btree" ("sizes_thumbnail_filename");


--
-- Name: media_sizes_xlarge_sizes_xlarge_filename_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "media_sizes_xlarge_sizes_xlarge_filename_idx" ON "public"."media" USING "btree" ("sizes_xlarge_filename");


--
-- Name: media_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "media_updated_at_idx" ON "public"."media" USING "btree" ("updated_at");


--
-- Name: pages__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages__status_idx" ON "public"."pages" USING "btree" ("_status");


--
-- Name: pages_blocks_archive_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_archive_order_idx" ON "public"."pages_blocks_archive" USING "btree" ("_order");


--
-- Name: pages_blocks_archive_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_archive_parent_id_idx" ON "public"."pages_blocks_archive" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_archive_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_archive_path_idx" ON "public"."pages_blocks_archive" USING "btree" ("_path");


--
-- Name: pages_blocks_content_list_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "pages_blocks_content_list_locales_locale_parent_id_unique" ON "public"."pages_blocks_content_list_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: pages_blocks_content_list_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_content_list_media_idx" ON "public"."pages_blocks_content_list" USING "btree" ("media_id");


--
-- Name: pages_blocks_content_list_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_content_list_order_idx" ON "public"."pages_blocks_content_list" USING "btree" ("_order");


--
-- Name: pages_blocks_content_list_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_content_list_parent_id_idx" ON "public"."pages_blocks_content_list" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_content_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_content_order_idx" ON "public"."pages_blocks_content" USING "btree" ("_order");


--
-- Name: pages_blocks_content_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_content_parent_id_idx" ON "public"."pages_blocks_content" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_content_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_content_path_idx" ON "public"."pages_blocks_content" USING "btree" ("_path");


--
-- Name: pages_blocks_cta_links_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "pages_blocks_cta_links_locales_locale_parent_id_unique" ON "public"."pages_blocks_cta_links_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: pages_blocks_cta_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_cta_links_order_idx" ON "public"."pages_blocks_cta_links" USING "btree" ("_order");


--
-- Name: pages_blocks_cta_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_cta_links_parent_id_idx" ON "public"."pages_blocks_cta_links" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_cta_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_cta_order_idx" ON "public"."pages_blocks_cta" USING "btree" ("_order");


--
-- Name: pages_blocks_cta_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_cta_parent_id_idx" ON "public"."pages_blocks_cta" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_cta_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_cta_path_idx" ON "public"."pages_blocks_cta" USING "btree" ("_path");


--
-- Name: pages_blocks_faq_block_links_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "pages_blocks_faq_block_links_locales_locale_parent_id_unique" ON "public"."pages_blocks_faq_block_links_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: pages_blocks_faq_block_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_faq_block_links_order_idx" ON "public"."pages_blocks_faq_block_links" USING "btree" ("_order");


--
-- Name: pages_blocks_faq_block_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_faq_block_links_parent_id_idx" ON "public"."pages_blocks_faq_block_links" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_faq_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_faq_block_order_idx" ON "public"."pages_blocks_faq_block" USING "btree" ("_order");


--
-- Name: pages_blocks_faq_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_faq_block_parent_id_idx" ON "public"."pages_blocks_faq_block" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_faq_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_faq_block_path_idx" ON "public"."pages_blocks_faq_block" USING "btree" ("_path");


--
-- Name: pages_blocks_form_block_form_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_form_block_form_idx" ON "public"."pages_blocks_form_block" USING "btree" ("form_id");


--
-- Name: pages_blocks_form_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_form_block_order_idx" ON "public"."pages_blocks_form_block" USING "btree" ("_order");


--
-- Name: pages_blocks_form_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_form_block_parent_id_idx" ON "public"."pages_blocks_form_block" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_form_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_form_block_path_idx" ON "public"."pages_blocks_form_block" USING "btree" ("_path");


--
-- Name: pages_blocks_logo_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_logo_block_order_idx" ON "public"."pages_blocks_logo_block" USING "btree" ("_order");


--
-- Name: pages_blocks_logo_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_logo_block_parent_id_idx" ON "public"."pages_blocks_logo_block" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_logo_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_logo_block_path_idx" ON "public"."pages_blocks_logo_block" USING "btree" ("_path");


--
-- Name: pages_blocks_media_block_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_media_block_media_idx" ON "public"."pages_blocks_media_block" USING "btree" ("media_id");


--
-- Name: pages_blocks_media_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_media_block_order_idx" ON "public"."pages_blocks_media_block" USING "btree" ("_order");


--
-- Name: pages_blocks_media_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_media_block_parent_id_idx" ON "public"."pages_blocks_media_block" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_media_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_media_block_path_idx" ON "public"."pages_blocks_media_block" USING "btree" ("_path");


--
-- Name: pages_blocks_pricing_block_additional_features_features_order_i; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_pricing_block_additional_features_features_order_i" ON "public"."pages_blocks_pricing_block_additional_features_features" USING "btree" ("_order");


--
-- Name: pages_blocks_pricing_block_additional_features_features_parent_; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_pricing_block_additional_features_features_parent_" ON "public"."pages_blocks_pricing_block_additional_features_features" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_pricing_block_base_features_features_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_pricing_block_base_features_features_order_idx" ON "public"."pages_blocks_pricing_block_base_features_features" USING "btree" ("_order");


--
-- Name: pages_blocks_pricing_block_base_features_features_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_pricing_block_base_features_features_parent_id_idx" ON "public"."pages_blocks_pricing_block_base_features_features" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_pricing_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_pricing_block_order_idx" ON "public"."pages_blocks_pricing_block" USING "btree" ("_order");


--
-- Name: pages_blocks_pricing_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_pricing_block_parent_id_idx" ON "public"."pages_blocks_pricing_block" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_pricing_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_pricing_block_path_idx" ON "public"."pages_blocks_pricing_block" USING "btree" ("_path");


--
-- Name: pages_blocks_stats_block_list_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_stats_block_list_order_idx" ON "public"."pages_blocks_stats_block_list" USING "btree" ("_order");


--
-- Name: pages_blocks_stats_block_list_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_stats_block_list_parent_id_idx" ON "public"."pages_blocks_stats_block_list" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_stats_block_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_stats_block_order_idx" ON "public"."pages_blocks_stats_block" USING "btree" ("_order");


--
-- Name: pages_blocks_stats_block_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_stats_block_parent_id_idx" ON "public"."pages_blocks_stats_block" USING "btree" ("_parent_id");


--
-- Name: pages_blocks_stats_block_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_blocks_stats_block_path_idx" ON "public"."pages_blocks_stats_block" USING "btree" ("_path");


--
-- Name: pages_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_created_at_idx" ON "public"."pages" USING "btree" ("created_at");


--
-- Name: pages_hero_hero_media_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_hero_hero_media_idx" ON "public"."pages_locales" USING "btree" ("hero_media_id", "_locale");


--
-- Name: pages_hero_links_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "pages_hero_links_locales_locale_parent_id_unique" ON "public"."pages_hero_links_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: pages_hero_links_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_hero_links_order_idx" ON "public"."pages_hero_links" USING "btree" ("_order");


--
-- Name: pages_hero_links_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_hero_links_parent_id_idx" ON "public"."pages_hero_links" USING "btree" ("_parent_id");


--
-- Name: pages_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "pages_locales_locale_parent_id_unique" ON "public"."pages_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: pages_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_meta_meta_image_idx" ON "public"."pages_locales" USING "btree" ("meta_image_id", "_locale");


--
-- Name: pages_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_rels_categories_id_idx" ON "public"."pages_rels" USING "btree" ("categories_id");


--
-- Name: pages_rels_faq_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_rels_faq_id_idx" ON "public"."pages_rels" USING "btree" ("faq_id");


--
-- Name: pages_rels_media_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_rels_media_id_idx" ON "public"."pages_rels" USING "btree" ("media_id");


--
-- Name: pages_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_rels_order_idx" ON "public"."pages_rels" USING "btree" ("order");


--
-- Name: pages_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_rels_pages_id_idx" ON "public"."pages_rels" USING "btree" ("pages_id");


--
-- Name: pages_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_rels_parent_idx" ON "public"."pages_rels" USING "btree" ("parent_id");


--
-- Name: pages_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_rels_path_idx" ON "public"."pages_rels" USING "btree" ("path");


--
-- Name: pages_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_rels_posts_id_idx" ON "public"."pages_rels" USING "btree" ("posts_id");


--
-- Name: pages_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_slug_idx" ON "public"."pages" USING "btree" ("slug");


--
-- Name: pages_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "pages_updated_at_idx" ON "public"."pages" USING "btree" ("updated_at");


--
-- Name: payload_jobs_completed_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_jobs_completed_at_idx" ON "public"."payload_jobs" USING "btree" ("completed_at");


--
-- Name: payload_jobs_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_jobs_created_at_idx" ON "public"."payload_jobs" USING "btree" ("created_at");


--
-- Name: payload_jobs_has_error_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_jobs_has_error_idx" ON "public"."payload_jobs" USING "btree" ("has_error");


--
-- Name: payload_jobs_log_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_jobs_log_order_idx" ON "public"."payload_jobs_log" USING "btree" ("_order");


--
-- Name: payload_jobs_log_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_jobs_log_parent_id_idx" ON "public"."payload_jobs_log" USING "btree" ("_parent_id");


--
-- Name: payload_jobs_processing_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_jobs_processing_idx" ON "public"."payload_jobs" USING "btree" ("processing");


--
-- Name: payload_jobs_queue_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_jobs_queue_idx" ON "public"."payload_jobs" USING "btree" ("queue");


--
-- Name: payload_jobs_task_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_jobs_task_slug_idx" ON "public"."payload_jobs" USING "btree" ("task_slug");


--
-- Name: payload_jobs_total_tried_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_jobs_total_tried_idx" ON "public"."payload_jobs" USING "btree" ("total_tried");


--
-- Name: payload_jobs_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_jobs_updated_at_idx" ON "public"."payload_jobs" USING "btree" ("updated_at");


--
-- Name: payload_jobs_wait_until_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_jobs_wait_until_idx" ON "public"."payload_jobs" USING "btree" ("wait_until");


--
-- Name: payload_locked_documents_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_created_at_idx" ON "public"."payload_locked_documents" USING "btree" ("created_at");


--
-- Name: payload_locked_documents_global_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_global_slug_idx" ON "public"."payload_locked_documents" USING "btree" ("global_slug");


--
-- Name: payload_locked_documents_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_rels_categories_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("categories_id");


--
-- Name: payload_locked_documents_rels_faq_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_rels_faq_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("faq_id");


--
-- Name: payload_locked_documents_rels_form_submissions_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_rels_form_submissions_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("form_submissions_id");


--
-- Name: payload_locked_documents_rels_forms_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_rels_forms_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("forms_id");


--
-- Name: payload_locked_documents_rels_media_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_rels_media_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("media_id");


--
-- Name: payload_locked_documents_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_rels_order_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("order");


--
-- Name: payload_locked_documents_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_rels_pages_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("pages_id");


--
-- Name: payload_locked_documents_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_rels_parent_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("parent_id");


--
-- Name: payload_locked_documents_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_rels_path_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("path");


--
-- Name: payload_locked_documents_rels_payload_jobs_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_rels_payload_jobs_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("payload_jobs_id");


--
-- Name: payload_locked_documents_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_rels_posts_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("posts_id");


--
-- Name: payload_locked_documents_rels_redirects_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_rels_redirects_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("redirects_id");


--
-- Name: payload_locked_documents_rels_search_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_rels_search_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("search_id");


--
-- Name: payload_locked_documents_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_rels_users_id_idx" ON "public"."payload_locked_documents_rels" USING "btree" ("users_id");


--
-- Name: payload_locked_documents_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_locked_documents_updated_at_idx" ON "public"."payload_locked_documents" USING "btree" ("updated_at");


--
-- Name: payload_migrations_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_migrations_created_at_idx" ON "public"."payload_migrations" USING "btree" ("created_at");


--
-- Name: payload_migrations_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_migrations_updated_at_idx" ON "public"."payload_migrations" USING "btree" ("updated_at");


--
-- Name: payload_preferences_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_preferences_created_at_idx" ON "public"."payload_preferences" USING "btree" ("created_at");


--
-- Name: payload_preferences_key_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_preferences_key_idx" ON "public"."payload_preferences" USING "btree" ("key");


--
-- Name: payload_preferences_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_preferences_rels_order_idx" ON "public"."payload_preferences_rels" USING "btree" ("order");


--
-- Name: payload_preferences_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_preferences_rels_parent_idx" ON "public"."payload_preferences_rels" USING "btree" ("parent_id");


--
-- Name: payload_preferences_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_preferences_rels_path_idx" ON "public"."payload_preferences_rels" USING "btree" ("path");


--
-- Name: payload_preferences_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_preferences_rels_users_id_idx" ON "public"."payload_preferences_rels" USING "btree" ("users_id");


--
-- Name: payload_preferences_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "payload_preferences_updated_at_idx" ON "public"."payload_preferences" USING "btree" ("updated_at");


--
-- Name: posts__status_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "posts__status_idx" ON "public"."posts" USING "btree" ("_status");


--
-- Name: posts_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "posts_created_at_idx" ON "public"."posts" USING "btree" ("created_at");


--
-- Name: posts_hero_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "posts_hero_image_idx" ON "public"."posts" USING "btree" ("hero_image_id");


--
-- Name: posts_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "posts_locales_locale_parent_id_unique" ON "public"."posts_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: posts_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "posts_meta_meta_image_idx" ON "public"."posts_locales" USING "btree" ("meta_image_id", "_locale");


--
-- Name: posts_populated_authors_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "posts_populated_authors_order_idx" ON "public"."posts_populated_authors" USING "btree" ("_order");


--
-- Name: posts_populated_authors_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "posts_populated_authors_parent_id_idx" ON "public"."posts_populated_authors" USING "btree" ("_parent_id");


--
-- Name: posts_rels_categories_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "posts_rels_categories_id_idx" ON "public"."posts_rels" USING "btree" ("categories_id");


--
-- Name: posts_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "posts_rels_order_idx" ON "public"."posts_rels" USING "btree" ("order");


--
-- Name: posts_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "posts_rels_parent_idx" ON "public"."posts_rels" USING "btree" ("parent_id");


--
-- Name: posts_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "posts_rels_path_idx" ON "public"."posts_rels" USING "btree" ("path");


--
-- Name: posts_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "posts_rels_posts_id_idx" ON "public"."posts_rels" USING "btree" ("posts_id");


--
-- Name: posts_rels_users_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "posts_rels_users_id_idx" ON "public"."posts_rels" USING "btree" ("users_id");


--
-- Name: posts_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "posts_slug_idx" ON "public"."posts" USING "btree" ("slug");


--
-- Name: posts_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "posts_updated_at_idx" ON "public"."posts" USING "btree" ("updated_at");


--
-- Name: redirects_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "redirects_created_at_idx" ON "public"."redirects" USING "btree" ("created_at");


--
-- Name: redirects_from_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "redirects_from_idx" ON "public"."redirects" USING "btree" ("from");


--
-- Name: redirects_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "redirects_rels_order_idx" ON "public"."redirects_rels" USING "btree" ("order");


--
-- Name: redirects_rels_pages_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "redirects_rels_pages_id_idx" ON "public"."redirects_rels" USING "btree" ("pages_id");


--
-- Name: redirects_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "redirects_rels_parent_idx" ON "public"."redirects_rels" USING "btree" ("parent_id");


--
-- Name: redirects_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "redirects_rels_path_idx" ON "public"."redirects_rels" USING "btree" ("path");


--
-- Name: redirects_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "redirects_rels_posts_id_idx" ON "public"."redirects_rels" USING "btree" ("posts_id");


--
-- Name: redirects_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "redirects_updated_at_idx" ON "public"."redirects" USING "btree" ("updated_at");


--
-- Name: search_categories_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "search_categories_order_idx" ON "public"."search_categories" USING "btree" ("_order");


--
-- Name: search_categories_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "search_categories_parent_id_idx" ON "public"."search_categories" USING "btree" ("_parent_id");


--
-- Name: search_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "search_created_at_idx" ON "public"."search" USING "btree" ("created_at");


--
-- Name: search_locales_locale_parent_id_unique; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "search_locales_locale_parent_id_unique" ON "public"."search_locales" USING "btree" ("_locale", "_parent_id");


--
-- Name: search_meta_meta_image_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "search_meta_meta_image_idx" ON "public"."search" USING "btree" ("meta_image_id");


--
-- Name: search_rels_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "search_rels_order_idx" ON "public"."search_rels" USING "btree" ("order");


--
-- Name: search_rels_parent_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "search_rels_parent_idx" ON "public"."search_rels" USING "btree" ("parent_id");


--
-- Name: search_rels_path_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "search_rels_path_idx" ON "public"."search_rels" USING "btree" ("path");


--
-- Name: search_rels_posts_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "search_rels_posts_id_idx" ON "public"."search_rels" USING "btree" ("posts_id");


--
-- Name: search_slug_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "search_slug_idx" ON "public"."search" USING "btree" ("slug");


--
-- Name: search_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "search_updated_at_idx" ON "public"."search" USING "btree" ("updated_at");


--
-- Name: users_created_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "users_created_at_idx" ON "public"."users" USING "btree" ("created_at");


--
-- Name: users_email_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE UNIQUE INDEX "users_email_idx" ON "public"."users" USING "btree" ("email");


--
-- Name: users_sessions_order_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "users_sessions_order_idx" ON "public"."users_sessions" USING "btree" ("_order");


--
-- Name: users_sessions_parent_id_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "users_sessions_parent_id_idx" ON "public"."users_sessions" USING "btree" ("_parent_id");


--
-- Name: users_updated_at_idx; Type: INDEX; Schema: public; Owner: -
--

CREATE INDEX "users_updated_at_idx" ON "public"."users" USING "btree" ("updated_at");


--
-- Name: _pages_v_blocks_archive _pages_v_blocks_archive_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_archive"
    ADD CONSTRAINT "_pages_v_blocks_archive_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content_list_locales _pages_v_blocks_content_list_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_content_list_locales"
    ADD CONSTRAINT "_pages_v_blocks_content_list_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v_blocks_content_list"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content_list _pages_v_blocks_content_list_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_content_list"
    ADD CONSTRAINT "_pages_v_blocks_content_list_media_id_media_id_fk" FOREIGN KEY ("media_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_content_list _pages_v_blocks_content_list_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_content_list"
    ADD CONSTRAINT "_pages_v_blocks_content_list_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v_blocks_content"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_content _pages_v_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_content"
    ADD CONSTRAINT "_pages_v_blocks_content_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta_links_locales _pages_v_blocks_cta_links_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_cta_links_locales"
    ADD CONSTRAINT "_pages_v_blocks_cta_links_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v_blocks_cta_links"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta_links _pages_v_blocks_cta_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_cta_links"
    ADD CONSTRAINT "_pages_v_blocks_cta_links_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v_blocks_cta"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_cta _pages_v_blocks_cta_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_cta"
    ADD CONSTRAINT "_pages_v_blocks_cta_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_faq_block_links_locales _pages_v_blocks_faq_block_links_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_faq_block_links_locales"
    ADD CONSTRAINT "_pages_v_blocks_faq_block_links_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v_blocks_faq_block_links"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_faq_block_links _pages_v_blocks_faq_block_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_faq_block_links"
    ADD CONSTRAINT "_pages_v_blocks_faq_block_links_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v_blocks_faq_block"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_faq_block _pages_v_blocks_faq_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_faq_block"
    ADD CONSTRAINT "_pages_v_blocks_faq_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_form_block"
    ADD CONSTRAINT "_pages_v_blocks_form_block_form_id_forms_id_fk" FOREIGN KEY ("form_id") REFERENCES "public"."forms"("id") ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_form_block _pages_v_blocks_form_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_form_block"
    ADD CONSTRAINT "_pages_v_blocks_form_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_logo_block _pages_v_blocks_logo_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_logo_block"
    ADD CONSTRAINT "_pages_v_blocks_logo_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_media_block"
    ADD CONSTRAINT "_pages_v_blocks_media_block_media_id_media_id_fk" FOREIGN KEY ("media_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;


--
-- Name: _pages_v_blocks_media_block _pages_v_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_media_block"
    ADD CONSTRAINT "_pages_v_blocks_media_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_pricing_block_additional_features_features _pages_v_blocks_pricing_block_additional_features_features_pare; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_pricing_block_additional_features_features"
    ADD CONSTRAINT "_pages_v_blocks_pricing_block_additional_features_features_pare" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v_blocks_pricing_block"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_pricing_block_base_features_features _pages_v_blocks_pricing_block_base_features_features_parent_id_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_pricing_block_base_features_features"
    ADD CONSTRAINT "_pages_v_blocks_pricing_block_base_features_features_parent_id_" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v_blocks_pricing_block"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_pricing_block _pages_v_blocks_pricing_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_pricing_block"
    ADD CONSTRAINT "_pages_v_blocks_pricing_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_stats_block_list _pages_v_blocks_stats_block_list_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_stats_block_list"
    ADD CONSTRAINT "_pages_v_blocks_stats_block_list_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v_blocks_stats_block"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_blocks_stats_block _pages_v_blocks_stats_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_blocks_stats_block"
    ADD CONSTRAINT "_pages_v_blocks_stats_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_locales _pages_v_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_locales"
    ADD CONSTRAINT "_pages_v_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_locales _pages_v_locales_version_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_locales"
    ADD CONSTRAINT "_pages_v_locales_version_hero_media_id_media_id_fk" FOREIGN KEY ("version_hero_media_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;


--
-- Name: _pages_v_locales _pages_v_locales_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_locales"
    ADD CONSTRAINT "_pages_v_locales_version_meta_image_id_media_id_fk" FOREIGN KEY ("version_meta_image_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;


--
-- Name: _pages_v _pages_v_parent_id_pages_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v"
    ADD CONSTRAINT "_pages_v_parent_id_pages_id_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."pages"("id") ON DELETE SET NULL;


--
-- Name: _pages_v_rels _pages_v_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_rels"
    ADD CONSTRAINT "_pages_v_rels_categories_fk" FOREIGN KEY ("categories_id") REFERENCES "public"."categories"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_faq_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_rels"
    ADD CONSTRAINT "_pages_v_rels_faq_fk" FOREIGN KEY ("faq_id") REFERENCES "public"."faq"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_rels"
    ADD CONSTRAINT "_pages_v_rels_media_fk" FOREIGN KEY ("media_id") REFERENCES "public"."media"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_rels"
    ADD CONSTRAINT "_pages_v_rels_pages_fk" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_rels"
    ADD CONSTRAINT "_pages_v_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_rels _pages_v_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_rels"
    ADD CONSTRAINT "_pages_v_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_version_hero_links_locales _pages_v_version_hero_links_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_version_hero_links_locales"
    ADD CONSTRAINT "_pages_v_version_hero_links_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v_version_hero_links"("id") ON DELETE CASCADE;


--
-- Name: _pages_v_version_hero_links _pages_v_version_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_pages_v_version_hero_links"
    ADD CONSTRAINT "_pages_v_version_hero_links_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_pages_v"("id") ON DELETE CASCADE;


--
-- Name: _posts_v_locales _posts_v_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v_locales"
    ADD CONSTRAINT "_posts_v_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_posts_v"("id") ON DELETE CASCADE;


--
-- Name: _posts_v_locales _posts_v_locales_version_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v_locales"
    ADD CONSTRAINT "_posts_v_locales_version_meta_image_id_media_id_fk" FOREIGN KEY ("version_meta_image_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;


--
-- Name: _posts_v _posts_v_parent_id_posts_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v"
    ADD CONSTRAINT "_posts_v_parent_id_posts_id_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."posts"("id") ON DELETE SET NULL;


--
-- Name: _posts_v_rels _posts_v_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v_rels"
    ADD CONSTRAINT "_posts_v_rels_categories_fk" FOREIGN KEY ("categories_id") REFERENCES "public"."categories"("id") ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v_rels"
    ADD CONSTRAINT "_posts_v_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."_posts_v"("id") ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v_rels"
    ADD CONSTRAINT "_posts_v_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;


--
-- Name: _posts_v_rels _posts_v_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v_rels"
    ADD CONSTRAINT "_posts_v_rels_users_fk" FOREIGN KEY ("users_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;


--
-- Name: _posts_v _posts_v_version_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v"
    ADD CONSTRAINT "_posts_v_version_hero_image_id_media_id_fk" FOREIGN KEY ("version_hero_image_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;


--
-- Name: _posts_v_version_populated_authors _posts_v_version_populated_authors_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."_posts_v_version_populated_authors"
    ADD CONSTRAINT "_posts_v_version_populated_authors_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."_posts_v"("id") ON DELETE CASCADE;


--
-- Name: categories_breadcrumbs categories_breadcrumbs_doc_id_categories_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."categories_breadcrumbs"
    ADD CONSTRAINT "categories_breadcrumbs_doc_id_categories_id_fk" FOREIGN KEY ("doc_id") REFERENCES "public"."categories"("id") ON DELETE SET NULL;


--
-- Name: categories_breadcrumbs categories_breadcrumbs_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."categories_breadcrumbs"
    ADD CONSTRAINT "categories_breadcrumbs_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."categories"("id") ON DELETE CASCADE;


--
-- Name: categories categories_parent_id_categories_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."categories"
    ADD CONSTRAINT "categories_parent_id_categories_id_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."categories"("id") ON DELETE SET NULL;


--
-- Name: faq_locales faq_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."faq_locales"
    ADD CONSTRAINT "faq_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."faq"("id") ON DELETE CASCADE;


--
-- Name: footer_nav_items_locales footer_nav_items_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."footer_nav_items_locales"
    ADD CONSTRAINT "footer_nav_items_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."footer_nav_items"("id") ON DELETE CASCADE;


--
-- Name: footer_nav_items footer_nav_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."footer_nav_items"
    ADD CONSTRAINT "footer_nav_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."footer"("id") ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."footer_rels"
    ADD CONSTRAINT "footer_rels_pages_fk" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."footer_rels"
    ADD CONSTRAINT "footer_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."footer"("id") ON DELETE CASCADE;


--
-- Name: footer_rels footer_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."footer_rels"
    ADD CONSTRAINT "footer_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;


--
-- Name: form_submissions form_submissions_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."form_submissions"
    ADD CONSTRAINT "form_submissions_form_id_forms_id_fk" FOREIGN KEY ("form_id") REFERENCES "public"."forms"("id") ON DELETE SET NULL;


--
-- Name: form_submissions_submission_data form_submissions_submission_data_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."form_submissions_submission_data"
    ADD CONSTRAINT "form_submissions_submission_data_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."form_submissions"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_checkbox_locales forms_blocks_checkbox_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_checkbox_locales"
    ADD CONSTRAINT "forms_blocks_checkbox_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms_blocks_checkbox"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_checkbox forms_blocks_checkbox_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_checkbox"
    ADD CONSTRAINT "forms_blocks_checkbox_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_country_locales forms_blocks_country_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_country_locales"
    ADD CONSTRAINT "forms_blocks_country_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms_blocks_country"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_country forms_blocks_country_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_country"
    ADD CONSTRAINT "forms_blocks_country_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_email_locales forms_blocks_email_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_email_locales"
    ADD CONSTRAINT "forms_blocks_email_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms_blocks_email"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_email forms_blocks_email_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_email"
    ADD CONSTRAINT "forms_blocks_email_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_message_locales forms_blocks_message_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_message_locales"
    ADD CONSTRAINT "forms_blocks_message_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms_blocks_message"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_message forms_blocks_message_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_message"
    ADD CONSTRAINT "forms_blocks_message_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_number_locales forms_blocks_number_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_number_locales"
    ADD CONSTRAINT "forms_blocks_number_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms_blocks_number"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_number forms_blocks_number_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_number"
    ADD CONSTRAINT "forms_blocks_number_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_select_locales forms_blocks_select_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_select_locales"
    ADD CONSTRAINT "forms_blocks_select_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms_blocks_select"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_select_options_locales forms_blocks_select_options_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_select_options_locales"
    ADD CONSTRAINT "forms_blocks_select_options_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms_blocks_select_options"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_select_options forms_blocks_select_options_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_select_options"
    ADD CONSTRAINT "forms_blocks_select_options_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms_blocks_select"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_select forms_blocks_select_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_select"
    ADD CONSTRAINT "forms_blocks_select_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_state_locales forms_blocks_state_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_state_locales"
    ADD CONSTRAINT "forms_blocks_state_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms_blocks_state"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_state forms_blocks_state_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_state"
    ADD CONSTRAINT "forms_blocks_state_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_text_locales forms_blocks_text_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_text_locales"
    ADD CONSTRAINT "forms_blocks_text_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms_blocks_text"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_text forms_blocks_text_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_text"
    ADD CONSTRAINT "forms_blocks_text_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_textarea_locales forms_blocks_textarea_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_textarea_locales"
    ADD CONSTRAINT "forms_blocks_textarea_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms_blocks_textarea"("id") ON DELETE CASCADE;


--
-- Name: forms_blocks_textarea forms_blocks_textarea_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_blocks_textarea"
    ADD CONSTRAINT "forms_blocks_textarea_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;


--
-- Name: forms_emails_locales forms_emails_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_emails_locales"
    ADD CONSTRAINT "forms_emails_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms_emails"("id") ON DELETE CASCADE;


--
-- Name: forms_emails forms_emails_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_emails"
    ADD CONSTRAINT "forms_emails_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;


--
-- Name: forms_locales forms_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."forms_locales"
    ADD CONSTRAINT "forms_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;


--
-- Name: header_nav_items_locales header_nav_items_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."header_nav_items_locales"
    ADD CONSTRAINT "header_nav_items_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."header_nav_items"("id") ON DELETE CASCADE;


--
-- Name: header_nav_items header_nav_items_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."header_nav_items"
    ADD CONSTRAINT "header_nav_items_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."header"("id") ON DELETE CASCADE;


--
-- Name: header_rels header_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."header_rels"
    ADD CONSTRAINT "header_rels_pages_fk" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: header_rels header_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."header_rels"
    ADD CONSTRAINT "header_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."header"("id") ON DELETE CASCADE;


--
-- Name: header_rels header_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."header_rels"
    ADD CONSTRAINT "header_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_archive pages_blocks_archive_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_archive"
    ADD CONSTRAINT "pages_blocks_archive_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_content_list_locales pages_blocks_content_list_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_content_list_locales"
    ADD CONSTRAINT "pages_blocks_content_list_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_content_list"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_content_list pages_blocks_content_list_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_content_list"
    ADD CONSTRAINT "pages_blocks_content_list_media_id_media_id_fk" FOREIGN KEY ("media_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;


--
-- Name: pages_blocks_content_list pages_blocks_content_list_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_content_list"
    ADD CONSTRAINT "pages_blocks_content_list_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_content"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_content pages_blocks_content_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_content"
    ADD CONSTRAINT "pages_blocks_content_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_cta_links_locales pages_blocks_cta_links_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_cta_links_locales"
    ADD CONSTRAINT "pages_blocks_cta_links_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_cta_links"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_cta_links pages_blocks_cta_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_cta_links"
    ADD CONSTRAINT "pages_blocks_cta_links_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_cta"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_cta pages_blocks_cta_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_cta"
    ADD CONSTRAINT "pages_blocks_cta_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_faq_block_links_locales pages_blocks_faq_block_links_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_faq_block_links_locales"
    ADD CONSTRAINT "pages_blocks_faq_block_links_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_faq_block_links"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_faq_block_links pages_blocks_faq_block_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_faq_block_links"
    ADD CONSTRAINT "pages_blocks_faq_block_links_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_faq_block"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_faq_block pages_blocks_faq_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_faq_block"
    ADD CONSTRAINT "pages_blocks_faq_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_form_block pages_blocks_form_block_form_id_forms_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_form_block"
    ADD CONSTRAINT "pages_blocks_form_block_form_id_forms_id_fk" FOREIGN KEY ("form_id") REFERENCES "public"."forms"("id") ON DELETE SET NULL;


--
-- Name: pages_blocks_form_block pages_blocks_form_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_form_block"
    ADD CONSTRAINT "pages_blocks_form_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_logo_block pages_blocks_logo_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_logo_block"
    ADD CONSTRAINT "pages_blocks_logo_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_media_block"
    ADD CONSTRAINT "pages_blocks_media_block_media_id_media_id_fk" FOREIGN KEY ("media_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;


--
-- Name: pages_blocks_media_block pages_blocks_media_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_media_block"
    ADD CONSTRAINT "pages_blocks_media_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_pricing_block_additional_features_features pages_blocks_pricing_block_additional_features_features_parent_; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_pricing_block_additional_features_features"
    ADD CONSTRAINT "pages_blocks_pricing_block_additional_features_features_parent_" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_pricing_block"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_pricing_block_base_features_features pages_blocks_pricing_block_base_features_features_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_pricing_block_base_features_features"
    ADD CONSTRAINT "pages_blocks_pricing_block_base_features_features_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_pricing_block"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_pricing_block pages_blocks_pricing_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_pricing_block"
    ADD CONSTRAINT "pages_blocks_pricing_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_stats_block_list pages_blocks_stats_block_list_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_stats_block_list"
    ADD CONSTRAINT "pages_blocks_stats_block_list_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_blocks_stats_block"("id") ON DELETE CASCADE;


--
-- Name: pages_blocks_stats_block pages_blocks_stats_block_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_blocks_stats_block"
    ADD CONSTRAINT "pages_blocks_stats_block_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: pages_hero_links_locales pages_hero_links_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_hero_links_locales"
    ADD CONSTRAINT "pages_hero_links_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages_hero_links"("id") ON DELETE CASCADE;


--
-- Name: pages_hero_links pages_hero_links_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_hero_links"
    ADD CONSTRAINT "pages_hero_links_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: pages_locales pages_locales_hero_media_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_locales"
    ADD CONSTRAINT "pages_locales_hero_media_id_media_id_fk" FOREIGN KEY ("hero_media_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;


--
-- Name: pages_locales pages_locales_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_locales"
    ADD CONSTRAINT "pages_locales_meta_image_id_media_id_fk" FOREIGN KEY ("meta_image_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;


--
-- Name: pages_locales pages_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_locales"
    ADD CONSTRAINT "pages_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_rels"
    ADD CONSTRAINT "pages_rels_categories_fk" FOREIGN KEY ("categories_id") REFERENCES "public"."categories"("id") ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_faq_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_rels"
    ADD CONSTRAINT "pages_rels_faq_fk" FOREIGN KEY ("faq_id") REFERENCES "public"."faq"("id") ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_rels"
    ADD CONSTRAINT "pages_rels_media_fk" FOREIGN KEY ("media_id") REFERENCES "public"."media"("id") ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_rels"
    ADD CONSTRAINT "pages_rels_pages_fk" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_rels"
    ADD CONSTRAINT "pages_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: pages_rels pages_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."pages_rels"
    ADD CONSTRAINT "pages_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;


--
-- Name: payload_jobs_log payload_jobs_log_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_jobs_log"
    ADD CONSTRAINT "payload_jobs_log_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."payload_jobs"("id") ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_categories_fk" FOREIGN KEY ("categories_id") REFERENCES "public"."categories"("id") ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_faq_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_faq_fk" FOREIGN KEY ("faq_id") REFERENCES "public"."faq"("id") ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_form_submissions_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_form_submissions_fk" FOREIGN KEY ("form_submissions_id") REFERENCES "public"."form_submissions"("id") ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_forms_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_forms_fk" FOREIGN KEY ("forms_id") REFERENCES "public"."forms"("id") ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_media_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_media_fk" FOREIGN KEY ("media_id") REFERENCES "public"."media"("id") ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_pages_fk" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."payload_locked_documents"("id") ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_payload_jobs_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_payload_jobs_fk" FOREIGN KEY ("payload_jobs_id") REFERENCES "public"."payload_jobs"("id") ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_redirects_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_redirects_fk" FOREIGN KEY ("redirects_id") REFERENCES "public"."redirects"("id") ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_search_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_search_fk" FOREIGN KEY ("search_id") REFERENCES "public"."search"("id") ON DELETE CASCADE;


--
-- Name: payload_locked_documents_rels payload_locked_documents_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_locked_documents_rels"
    ADD CONSTRAINT "payload_locked_documents_rels_users_fk" FOREIGN KEY ("users_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_preferences_rels"
    ADD CONSTRAINT "payload_preferences_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."payload_preferences"("id") ON DELETE CASCADE;


--
-- Name: payload_preferences_rels payload_preferences_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."payload_preferences_rels"
    ADD CONSTRAINT "payload_preferences_rels_users_fk" FOREIGN KEY ("users_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;


--
-- Name: posts posts_hero_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts"
    ADD CONSTRAINT "posts_hero_image_id_media_id_fk" FOREIGN KEY ("hero_image_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;


--
-- Name: posts_locales posts_locales_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts_locales"
    ADD CONSTRAINT "posts_locales_meta_image_id_media_id_fk" FOREIGN KEY ("meta_image_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;


--
-- Name: posts_locales posts_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts_locales"
    ADD CONSTRAINT "posts_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;


--
-- Name: posts_populated_authors posts_populated_authors_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts_populated_authors"
    ADD CONSTRAINT "posts_populated_authors_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_categories_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts_rels"
    ADD CONSTRAINT "posts_rels_categories_fk" FOREIGN KEY ("categories_id") REFERENCES "public"."categories"("id") ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts_rels"
    ADD CONSTRAINT "posts_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts_rels"
    ADD CONSTRAINT "posts_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;


--
-- Name: posts_rels posts_rels_users_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."posts_rels"
    ADD CONSTRAINT "posts_rels_users_fk" FOREIGN KEY ("users_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_pages_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."redirects_rels"
    ADD CONSTRAINT "redirects_rels_pages_fk" FOREIGN KEY ("pages_id") REFERENCES "public"."pages"("id") ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."redirects_rels"
    ADD CONSTRAINT "redirects_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."redirects"("id") ON DELETE CASCADE;


--
-- Name: redirects_rels redirects_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."redirects_rels"
    ADD CONSTRAINT "redirects_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;


--
-- Name: search_categories search_categories_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."search_categories"
    ADD CONSTRAINT "search_categories_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."search"("id") ON DELETE CASCADE;


--
-- Name: search_locales search_locales_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."search_locales"
    ADD CONSTRAINT "search_locales_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."search"("id") ON DELETE CASCADE;


--
-- Name: search search_meta_image_id_media_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."search"
    ADD CONSTRAINT "search_meta_image_id_media_id_fk" FOREIGN KEY ("meta_image_id") REFERENCES "public"."media"("id") ON DELETE SET NULL;


--
-- Name: search_rels search_rels_parent_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."search_rels"
    ADD CONSTRAINT "search_rels_parent_fk" FOREIGN KEY ("parent_id") REFERENCES "public"."search"("id") ON DELETE CASCADE;


--
-- Name: search_rels search_rels_posts_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."search_rels"
    ADD CONSTRAINT "search_rels_posts_fk" FOREIGN KEY ("posts_id") REFERENCES "public"."posts"("id") ON DELETE CASCADE;


--
-- Name: users_sessions users_sessions_parent_id_fk; Type: FK CONSTRAINT; Schema: public; Owner: -
--

ALTER TABLE ONLY "public"."users_sessions"
    ADD CONSTRAINT "users_sessions_parent_id_fk" FOREIGN KEY ("_parent_id") REFERENCES "public"."users"("id") ON DELETE CASCADE;


--
-- PostgreSQL database dump complete
--

