# Graph Report - workspace  (2026-08-29)

## Corpus Check
- cluster-only mode — file stats not available

## Summary
- 2730 nodes · 6140 edges · 142 communities (121 shown, 21 thin omitted)
- Extraction: 90% EXTRACTED · 10% INFERRED · 0% AMBIGUOUS · INFERRED: 596 edges (avg confidence: 0.82)
- Token cost: 0 input · 0 output

## Graph Freshness
- Built from commit: `0667352f`
- Run `git rev-parse HEAD` and compare to check if the graph is stale.
- Run `graphify update .` after code changes (no API cost).

## Community Hubs (Navigation)
- Community 0
- Community 1
- Community 2
- Community 3
- Community 4
- Community 5
- Community 6
- Community 7
- Community 8
- Community 9
- Community 10
- Community 11
- Community 12
- Community 13
- Community 14
- Community 15
- Community 16
- Community 17
- Community 18
- Community 19
- Community 20
- Community 21
- Community 22
- Community 23
- Community 24
- Community 25
- Community 26
- Community 27
- Community 28
- Community 29
- Community 30
- Community 31
- Community 32
- Community 33
- Community 34
- Community 35
- Community 36
- Community 37
- Community 38
- Community 39
- Community 40
- Community 41
- Community 42
- Community 43
- Community 44
- Community 45
- Community 46
- Community 47
- Community 48
- Community 49
- Community 50
- Community 51
- Community 52
- Community 53
- Community 54
- Community 55
- Community 56
- Community 57
- Community 58
- Community 59
- Community 60
- Community 61
- Community 62
- Community 63
- Community 64
- Community 65
- Community 66
- Community 67
- Community 68
- Community 69
- Community 70
- Community 71
- Community 72
- Community 73
- Community 74
- Community 75
- Community 76
- Community 77
- Community 78
- Community 79
- Community 80
- Community 81
- Community 82
- Community 83
- Community 84
- Community 85
- Community 86
- Community 87
- Community 88
- Community 89
- Community 90
- Community 91
- Community 92
- Community 93
- Community 94
- Community 95
- Community 96
- Community 97
- Community 98
- Community 99
- Community 100
- Community 101
- Community 102
- Community 103
- Community 104
- Community 105
- Community 106
- Community 107
- Community 108
- Community 109
- Community 110
- Community 111
- Community 112
- Community 113
- Community 114
- Community 115
- Community 116
- Community 117
- Community 118
- Community 119
- Community 120
- Community 121
- Community 122
- Community 123
- Community 124
- Community 125
- Community 126
- Community 127
- Community 129
- Community 130
- Community 132
- Community 133
- Community 134
- Community 135
- Community 136
- Community 137
- Community 138
- Community 141

## God Nodes (most connected - your core abstractions)
1. `stripANSI()` - 34 edges
2. `openStore()` - 33 edges
3. `MetricsSnapshot` - 33 edges
4. `dirEntry` - 30 edges
5. `format_path_link()` - 26 edges
6. `scanPathConcurrentWithLimiter()` - 24 edges
7. `UserError` - 23 edges
8. `newModel()` - 23 edges
9. `model` - 23 edges
10. `opt_msg()` - 23 edges

## Surprising Connections (you probably didn't know these)
- `perform_cleanup()` --calls--> `check_tcc_permissions()`  [EXTRACTED]
  bin/clean.sh → lib/clean/caches.sh
- `register_dry_run_cleanup_target()` --calls--> `mole_path_identity()`  [EXTRACTED]
  bin/clean.sh → lib/core/common.sh
- `append_dry_run_cleanup_target()` --calls--> `mole_path_identity()`  [EXTRACTED]
  bin/clean.sh → lib/core/common.sh
- `prompt_for_system_clean()` --calls--> `ensure_sudo_session()`  [EXTRACTED]
  bin/clean.sh → lib/core/sudo.sh
- `prompt_for_system_clean()` --calls--> `ensure_sudo_session_with_password()`  [EXTRACTED]
  bin/clean.sh → lib/core/sudo.sh

## Import Cycles
- None detected.

## Communities (142 total, 21 thin omitted)

### Community 0 - "Community 0"
Cohesion: 0.07
Nodes (62): activeAlerts(), TestRenderProcessAlertBar(), buildCards(), diskLabel(), formatDiskSMARTLine(), getMoleFrame(), humanBytes(), layoutColumnRows() (+54 more)

### Community 1 - "Community 1"
Cohesion: 0.05
Nodes (61): cancelAndDrainLiveScan(), installBlockingDuProbe(), mustAbs(), progressFillCount(), rowContaining(), TestAnalyzeIncludesParallelsVMStorageButKeepsOtherVirtualizationSkips(), TestCalculateDirSizeFastHighFanoutCompletes(), TestCanceledLiveScanPublishesNoResultsOrCache() (+53 more)

### Community 2 - "Community 2"
Cohesion: 0.06
Nodes (48): cacheFileStat, overviewSizeSnapshot, animTick(), animTickWithSpeed(), Collector, main(), newModel(), nextCollectionMode() (+40 more)

### Community 3 - "Community 3"
Cohesion: 0.07
Nodes (53): _app_cache_cleanup_directories_exist(), _app_cache_safe_clean_guarded(), autodesk_cache_process_state(), _autodesk_fusion_delete_guard_allows(), _autodesk_fusion_guard_current_is_unchanged(), _autodesk_fusion_materialize_version_dirs(), _autodesk_fusion_plan_old_versions(), _autodesk_fusion_resolve_current_dir() (+45 more)

### Community 4 - "Community 4"
Cohesion: 0.07
Nodes (54): TestDeletePathWithProgress(), isEndpointSecurityCachePath(), endpointSecurityPrefixesFromShellData(), TestDeleteMultiplePathsCmdHandlesParentChild(), TestEndpointSecurityBundlePrefixesAllProtectDarwinCaches(), TestEndpointSecurityBundlePrefixesMirrorShellData(), TestEndpointSecurityCachePathIsCaseInsensitive(), TestMoveToTrashNonExistent() (+46 more)

### Community 5 - "Community 5"
Cohesion: 0.10
Nodes (58): acquire_install_lock(), build_binary_from_source(), calculate_file_sha256(), check_requirements(), cleanup_installer(), create_directories(), curl_download_with_retry(), download_binary() (+50 more)

### Community 6 - "Community 6"
Cohesion: 0.06
Nodes (50): run_cloud_and_office_cleanup(), app_support_dir_has_regenerable_cache_markers(), app_support_entry_count_capped(), app_support_item_size_bytes(), cache_top_level_entry_count_capped(), check_large_file_candidates(), clean_app_caches(), clean_application_support_logs() (+42 more)

### Community 7 - "Community 7"
Cohesion: 0.04
Nodes (43): bytes_to_human_kb(), DEFAULT_OPTIMIZE_WHITELIST_PATTERNS, DEFAULT_WHITELIST_PATTERNS, FINDER_METADATA_SENTINEL, format_free_space_kb(), get_free_space(), get_free_space_kb(), get_free_space_target() (+35 more)

### Community 8 - "Community 8"
Cohesion: 0.05
Nodes (54): FakeReaderOptions, BlockerVerdict, Check, CheckDetails, CheckRead, ChecksFastPath, CiBase, CiClean (+46 more)

### Community 9 - "Community 9"
Cohesion: 0.09
Nodes (47): _abort_uninstall_batch(), append_line(), _batch_execute_removals(), _batch_preview_and_confirm(), _batch_refresh_selected_app_bundle_id(), _batch_render_summary(), _batch_scan_app_details(), _batch_selected_app_identity() (+39 more)

### Community 10 - "Community 10"
Cohesion: 0.11
Nodes (39): realRuntime(), at(), checkDetails(), CommandResult, discoverStack(), enumValue(), firstLine(), GhGitHubReader (+31 more)

### Community 11 - "Community 11"
Cohesion: 0.09
Nodes (40): brew_mole_formula_installed(), check_for_updates(), get_homebrew_latest_version(), get_install_channel(), get_install_commit(), get_install_receipt(), get_latest_commit_from_github(), get_latest_version() (+32 more)

### Community 12 - "Community 12"
Cohesion: 0.06
Nodes (38): hint_collect_child_dirs_with_timeout(), hint_extract_launch_agent_associated_bundle(), hint_extract_launch_agent_program_path(), hint_get_path_size_kb_with_timeout(), hint_is_app_scoped_launch_target(), hint_is_system_binary(), hint_launch_agent_bundle_exists(), hint_launch_agent_has_mach_services() (+30 more)

### Community 13 - "Community 13"
Cohesion: 0.11
Nodes (40): main(), activeRows(), applyQueueSnapshot(), assessGitHubMerge(), AUTOMATION_TOKENS, blockerVerdict(), ciBlocker(), classifyPr() (+32 more)

### Community 14 - "Community 14"
Cohesion: 0.10
Nodes (37): deleteProgressMsg, fileEntry, liveScanEventKind, liveScanEventMsg, liveScanEventStream, liveScanStartMsg, liveScanTarget, liveScanTargetKind (+29 more)

### Community 15 - "Community 15"
Cohesion: 0.07
Nodes (39): apps_data, cleanup(), LANG, LC_ALL, load_applications(), main(), match_apps_by_name(), MOLE_UNINSTALL_EPOCH_FLOOR (+31 more)

### Community 16 - "Community 16"
Cohesion: 0.09
Nodes (35): jsonEntry, jsonFileEntry, jsonOutput, TestIsCleanableDir(), TestIsHandledByMoClean(), TestPerformScanForJSONCountsTopLevelFiles(), hasValidCacheDirTag(), isCleanableDir() (+27 more)

### Community 17 - "Community 17"
Cohesion: 0.09
Nodes (37): append_dry_run_cleanup_target(), classify_cleanup_risk(), defer_cleanup_family(), DEFERRED_CLEANUP_FAMILIES, DRY_RUN_SEEN_IDENTITIES, emit_deduplicated_dry_run_ledger(), end_section(), flush_idle_section_slot() (+29 more)

### Community 18 - "Community 18"
Cohesion: 0.08
Nodes (40): Command, compactRows(), countLine(), createProgram(), emit(), frontierLine(), frontierRepo(), FrontierSetOptions (+32 more)

### Community 19 - "Community 19"
Cohesion: 0.08
Nodes (39): TestTunnelInterfaceIsNotReportedAsAProxy(), batteryProgressBar(), colorizeBattery(), colorizePercent(), formatBatteryStatus(), formatDiskIOLine(), formatDiskLine(), formatDiskMetaLine() (+31 more)

### Community 20 - "Community 20"
Cohesion: 0.07
Nodes (19): clean_clang_module_cache(), clean_codex_desktop_caches(), clean_dev_cloud(), clean_dev_docker(), clean_dev_jetbrains_toolbox(), clean_dev_other_langs(), clean_developer_tools(), clean_github_cli_cache() (+11 more)

### Community 21 - "Community 21"
Cohesion: 0.08
Nodes (38): build_installer_delete_plan(), collect_installers(), delete_selected_installers(), DISPLAY_NAMES, execute_installer_delete_plan(), format_installer_display(), get_source_display(), get_terminal_width() (+30 more)

### Community 22 - "Community 22"
Cohesion: 0.10
Nodes (35): annotateDiskMetadata(), baseDeviceName(), collectDisks(), collectDisksFast(), collectDisksWithCorrections(), collectTrashSize(), correctAPFSDiskUsage(), correctDiskTotalBytes() (+27 more)

### Community 23 - "Community 23"
Cohesion: 0.11
Nodes (35): batteryHealthPercent(), collectThermal(), getAppleSmartBatteryHealthData(), getCachedPowerData(), getCachedSystemPowerData(), getSystemPowerJSONOutput(), getSystemPowerOutput(), ioRegValueForKey() (+27 more)

### Community 24 - "Community 24"
Cohesion: 0.14
Nodes (20): collectBatteries(), parsePMSet(), collectConcurrently(), collectHostInfo(), collectProcessesInto(), Collector, github.com/shirou/gopsutil/v4/disk.IOCountersStat, github.com/shirou/gopsutil/v4/host.InfoStat (+12 more)

### Community 25 - "Community 25"
Cohesion: 0.06
Nodes (22): bundle_has_installed_app(), _MOLE_BUNDLE_RESOLVER_LOADED, bundle_resolver.sh script, MOLE_COMMON_LOADED, mole_normalize_path(), mole_path_identity(), remove_apps_from_dock(), help.sh script (+14 more)

### Community 26 - "Community 26"
Cohesion: 0.12
Nodes (33): resolvedCacheDir, resetOverviewSnapshotForTest(), TestCacheBypassSkipsHomeLibraryOverviewSnapshot(), TestEnsureOverviewSnapshotCacheDropsExpiredAndLegacyEntries(), TestEvictOverviewSnapshotsKeepsNewest(), TestGetCacheDirFollowsHomeChanges(), TestGetCacheDirIsAnalyzerScoped(), TestInvalidateCacheTreeDropsChildSnapshotsInOneSave() (+25 more)

### Community 27 - "Community 27"
Cohesion: 0.07
Nodes (31): HISTORY_DELETE_MODES, HISTORY_DELETE_PATHS, HISTORY_DELETE_SIZE_KB, HISTORY_DELETE_STATUSES, HISTORY_DELETE_TIMESTAMPS, history_finish_session(), history_normalize_decimal(), history_normalize_limit() (+23 more)

### Community 28 - "Community 28"
Cohesion: 0.19
Nodes (29): scanLimiter, readLiveScanInitialEntries(), acquireScanPermit(), calculateDirSizeConcurrent(), calculateDirSizeFast(), calculateDirSizeFastWithLimiter(), countableFileSize(), findLargeFilesWithSpotlight() (+21 more)

### Community 29 - "Community 29"
Cohesion: 0.08
Nodes (32): AddStandingParams, AddUnitParams, CheckLedgerParams, cleanCell(), countLine(), FrontierPr, FrontierPrState, Gate (+24 more)

### Community 30 - "Community 30"
Cohesion: 0.12
Nodes (31): CLAUDE_VM_ORPHAN_AGE_THRESHOLD, clean_orphaned_app_data(), clean_orphaned_container_stubs(), clean_orphaned_system_services(), _container_stub_app_exists(), INSTALLED_APPS_CACHE_COMPLETE_MARKER, is_bundle_orphaned(), is_claude_vm_bundle_orphaned() (+23 more)

### Community 31 - "Community 31"
Cohesion: 0.09
Nodes (31): calculate_total_size(), format_duration_human(), MOLE_ACTIVE_POWERLOG_DB_PATH, _mole_bounded_sudo_find(), _mole_delete_log(), MOLE_ERR_AUTH_FAILED, MOLE_ERR_MUTABLE_PARENT, MOLE_ERR_PRIVACY_DENIED (+23 more)

### Community 32 - "Community 32"
Cohesion: 0.13
Nodes (27): calculateNameWidth(), coloredProgressBar(), displayWidth(), formatNumber(), formatPercent(), formatUnusedTime(), padName(), runeWidth() (+19 more)

### Community 33 - "Community 33"
Cohesion: 0.13
Nodes (26): ensure_user_file(), get_file_size(), append_log_line(), append_log_lines(), debug_file_action(), DEBUG_LOG_FILE, debug_operation_detail(), debug_operation_start() (+18 more)

### Community 34 - "Community 34"
Cohesion: 0.13
Nodes (25): get_all_cache_items(), get_optimize_whitelist_items(), is_whitelisted(), load_whitelist(), manage_whitelist(), manage_whitelist_categories(), optimize_whitelist_pattern_is_retired(), patterns_equivalent() (+17 more)

### Community 35 - "Community 35"
Cohesion: 0.12
Nodes (22): cleanup(), start_uninstall_interactive_screen(), cycle_sort_mode(), draw_header(), draw_menu(), ensure_sorted_indices(), enter_alt_screen(), handle_filter_char() (+14 more)

### Community 36 - "Community 36"
Cohesion: 0.12
Nodes (20): collectProcesses(), formatProcessLabel(), parseProcessOutput(), parsePsAuxOutput(), processNameFromCommand(), processRanksBefore(), topProcesses(), TestCollectProcessesUnderCommaLocale() (+12 more)

### Community 37 - "Community 37"
Cohesion: 0.15
Nodes (20): CliOptions, CliRuntime, nonNegativeNumber(), parseArgs(), positiveInteger(), positiveNumber(), prNumber(), RawOptions (+12 more)

### Community 38 - "Community 38"
Cohesion: 0.15
Nodes (22): MOLE_OPTIMIZE_DIAG_CPU_THRESHOLD_DEFAULT, MOLE_OPTIMIZE_DIAG_SAMPLE_DELAY_DEFAULT, opt_diag_collect_detach_candidates(), opt_diag_count_matches(), opt_diag_cpu_threshold(), opt_diag_detach_candidates(), opt_diag_family_label(), opt_diag_family_total_for() (+14 more)

### Community 39 - "Community 39"
Cohesion: 0.27
Nodes (9): TestOverviewViewShowsFreeSpaceLabel(), humanizeBytes(), TestHumanizeBytes(), model, scanOverviewPathCmd(), tickCmd(), github.com/charmbracelet/bubbletea.Cmd, github.com/charmbracelet/bubbletea.KeyMsg (+1 more)

### Community 40 - "Community 40"
Cohesion: 0.13
Nodes (16): failedCheck(), fakeReader(), passingCheck(), pendingCheck(), ChecksUnavailable, parsePrUrl(), context, WatcherQueryError (+8 more)

### Community 41 - "Community 41"
Cohesion: 0.17
Nodes (21): collectCPU(), collectCPUFast(), collectCPUWithOptions(), cpuBusyTime(), fallbackCPUUtilization(), fallbackLoadAvgFromUptime(), getCoreTopology(), isZeroLoad() (+13 more)

### Community 42 - "Community 42"
Cohesion: 0.13
Nodes (17): cleanup_temp_files(), create_temp_dir(), ensure_mole_temp_registry_file(), format_path_link(), get_epoch_seconds(), initialize_mole_temp_registry_path(), is_ansi_supported(), mktemp_file() (+9 more)

### Community 43 - "Community 43"
Cohesion: 0.09
Nodes (16): close, closeIndex, h1, HOW_TO_READ_MARKERS, howToRead, lines, PERF_ITEMS, problems (+8 more)

### Community 44 - "Community 44"
Cohesion: 0.31
Nodes (21): filterKey(), filterRune(), filterType(), model, TestEntryFilterClearsMultiSelectOnQueryChange(), TestEntryFilterDrillInPreservesFullParentOnBack(), TestEntryFilterIgnoredInOverview(), TestEntryFilterNarrowsApplyAndClear() (+13 more)

### Community 45 - "Community 45"
Cohesion: 0.15
Nodes (20): batteryHealthLabel(), calculateHealthScore(), formatUptime(), TestBatteryHealthLabel(), TestCalculateHealthScoreCapsFailingSMARTAt44(), TestCalculateHealthScoreDetectsIssues(), TestCalculateHealthScoreDoesNotPenalizeUnavailableSMART(), TestCalculateHealthScoreEdgeCases() (+12 more)

### Community 46 - "Community 46"
Cohesion: 0.14
Nodes (21): has_active_vpn_interface(), launch_agent_volume_mounted(), _login_item_app_exists(), _login_item_bundle_metadata_matches(), _login_item_debug(), _login_item_name_matches(), _login_items_snapshot(), MOLE_OPTIMIZE_TASKS_LOADED (+13 more)

### Community 47 - "Community 47"
Cohesion: 0.13
Nodes (19): shouldUseJSONOutput(), TestCollectorAppliesCachedEnrichmentToFastSnapshot(), TestCollectorAppliesZeroValueEnrichmentExactly(), TestCollectorKeepsFastDisksWhenCacheHasNone(), TestCollectorKeepsLiveProcessDataWhenApplyingEnrichment(), TestCollectorOverridesFastDisksWithCorrectedCache(), TestFullCollectionErrorDoesNotMarkFullFresh(), TestMetricsSnapshotFieldsHaveCollectionClassifications() (+11 more)

### Community 48 - "Community 48"
Cohesion: 0.15
Nodes (14): cleanup_monitor(), compact_purge_scan_path(), handle_interrupt(), LANG, LC_ALL, main(), perform_purge(), purge.sh script (+6 more)

### Community 49 - "Community 49"
Cohesion: 0.19
Nodes (16): collectIOCountersSafely(), collectProxy(), collectProxyFromEnv(), collectProxyFromScutilOutput(), collectProxyFromTunInterfaces(), getInterfaceIPs(), Collector, isNoiseInterface() (+8 more)

### Community 50 - "Community 50"
Cohesion: 0.15
Nodes (16): check_tcc_permissions(), clean_project_cache_target(), clean_project_caches(), clean_python_bytecode_cache_group(), _cleanup_project_cache_scan_workers(), discover_project_cache_roots(), flush_python_group_if_needed(), _handle_project_cache_scan_interrupt() (+8 more)

### Community 51 - "Community 51"
Cohesion: 0.14
Nodes (20): clean_dev_mobile(), clean_xcode_device_support(), clean_xcode_documentation_cache(), clean_xcode_simulator_runtime_volumes(), clean_xcode_system_coresimulator_caches(), clean_xcode_xctest_devices(), _coresimulator_activity_state(), _coresimulator_booted_device_state() (+12 more)

### Community 52 - "Community 52"
Cohesion: 0.31
Nodes (20): bytes_to_human(), update_via_homebrew(), get_path_size_kb(), _mole_bounded_sudo(), _mole_bounded_sudo_until(), mole_delete(), _mole_is_active_powerlog_database_path(), _mole_privileged_batch_max_items() (+12 more)

### Community 53 - "Community 53"
Cohesion: 0.24
Nodes (19): cacheEntry, TestCacheSaveLoadRoundTrip(), TestLoadCacheExpiresWhenDirectoryChanges(), TestLoadCacheExpiresWhenModifiedAndReuseWindowPassed(), TestLoadCacheFromDiskRemovesEntryForMissingDirectory(), TestLoadCacheFromDiskRemovesExpiredEntry(), TestLoadCacheReusesRecentEntryAfterDirectoryChanges(), TestLoadRawCacheFromDiskRemovesUndecodableEntry() (+11 more)

### Community 54 - "Community 54"
Cohesion: 0.23
Nodes (17): ask(), ask_secret(), banner(), _clear(), _existing(), finish(), note(), open_url() (+9 more)

### Community 55 - "Community 55"
Cohesion: 0.22
Nodes (18): clean_deep_system(), clean_local_snapshots(), clean_time_machine_failed_backups(), gpu_cache_dir_is_stale(), is_rebuildable_gpu_cache_dir(), macos_installer_candidate_identity(), macos_installer_candidate_still_eligible(), macos_installer_process_is_idle() (+10 more)

### Community 56 - "Community 56"
Cohesion: 0.15
Nodes (13): build_regex_var(), bundle_matches_pattern(), _ensure_uninstall_regex(), force_kill_app(), is_endpoint_security_cache_path(), is_orbstack_runtime_path(), MOLE_APP_PROTECTION_LOADED, _mole_is_shared_home_state_root() (+5 more)

### Community 57 - "Community 57"
Cohesion: 0.14
Nodes (10): create_inline_spinner_control_dir(), format_spinner_message(), get_display_width(), mo_spinner_chars(), MOLE_UI_LOADED, ui.sh script, start_inline_spinner(), stop_inline_spinner() (+2 more)

### Community 58 - "Community 58"
Cohesion: 0.22
Nodes (16): multiDeleteError, deleteMultiplePathsCmd(), deletePathCmd(), ensureOwnedTrashDirectory(), isCriticalAnalyzeDeletePath(), isDirectChildOfExistingRoot(), isPathWithinExistingRoot(), isProtectedAnalyzeDeletePath() (+8 more)

### Community 59 - "Community 59"
Cohesion: 0.18
Nodes (18): branchSha(), errorMessage(), graphiteFrontier(), graphitePullRequest(), parseGtBranches(), parseGtPullRequest(), parseVerdict(), positiveInteger() (+10 more)

### Community 60 - "Community 60"
Cohesion: 0.16
Nodes (18): clean_codex_desktop_staging(), clean_codex_marketplace_staging(), _codex_app_build_version(), codex_desktop_process_state(), codex_desktop_running(), _codex_installed_build_version(), _codex_marketplace_staging_delete_guard_allows(), _codex_marketplace_staging_entry_is_still_stale() (+10 more)

### Community 61 - "Community 61"
Cohesion: 0.12
Nodes (13): MOLE_OPTIMIZE_OUTCOME_APPLIED, MOLE_OPTIMIZE_OUTCOME_ATTENTION, MOLE_OPTIMIZE_OUTCOME_FAILED, MOLE_OPTIMIZE_OUTCOME_SKIPPED, MOLE_OPTIMIZE_OUTCOME_UNAVAILABLE, MOLE_OPTIMIZE_OUTCOME_UNCHANGED, MOLE_OPTIMIZE_OUTCOME_VALUES, MOLE_OPTIMIZE_OUTCOMES_LOADED (+5 more)

### Community 62 - "Community 62"
Cohesion: 0.18
Nodes (15): scanPublication, TestCanceledCacheMutationsDoNotPublish(), TestCanceledCacheSaveDoesNotPublish(), TestEnterSelectedDirRefreshesStaleInMemoryCache(), TestGoBackRefreshesHistoryEntryNeedingRefresh(), TestLiveScanEventStreamRejectsCompletionAfterCancellation(), TestLiveScanEventStreamReservesRequiredCapacity(), TestScanCmdTreatsWarmedCacheAsStale() (+7 more)

### Community 63 - "Community 63"
Cohesion: 0.34
Nodes (17): find_app_files(), find_app_receipt_files(), find_app_system_files(), find_shared_app_paths(), find_vendor_nested_app_paths(), get_diagnostic_report_paths_for_app(), _mole_uninstall_embedded_bundle_ids(), _mole_uninstall_is_common_app_name() (+9 more)

### Community 64 - "Community 64"
Cohesion: 0.21
Nodes (17): get_invoking_uid(), _mole_bound_path_matches(), _mole_create_privileged_trash_stage(), _mole_move_app_to_trash_via_finder(), _mole_move_path_to_user_trash(), _mole_move_to_trash(), _mole_move_to_trash_batch(), _mole_path_is_application_bundle() (+9 more)

### Community 65 - "Community 65"
Cohesion: 0.28
Nodes (15): cleanup(), adopt_sudo_session(), check_touchid_support(), ensure_sudo_session(), ensure_sudo_session_with_password(), has_sudo_session(), is_clamshell_mode(), _request_password() (+7 more)

### Community 66 - "Community 66"
Cohesion: 0.15
Nodes (12): directories, git(), handles, initializedStore(), makeDirectory(), makeGitStack(), RunResult, SCRIPT (+4 more)

### Community 67 - "Community 67"
Cohesion: 0.19
Nodes (16): _claude_desktop_delete_guard_allows(), claude_desktop_running(), _claude_desktop_safe_clean_guarded(), claude_desktop_sdk_version(), claude_desktop_sdk_version_is_safe(), clean_claude_desktop_bundled_versions(), clean_dev_ai_agents(), clean_versioned_agent_root() (+8 more)

### Community 68 - "Community 68"
Cohesion: 0.26
Nodes (15): optimize_task_result(), optimize_task_result_from_counts(), opt_cache_refresh(), opt_coreduet_cleanup(), opt_disk_verify(), opt_fix_broken_configs(), opt_launch_services_rebuild(), opt_legacy_overrides_audit() (+7 more)

### Community 69 - "Community 69"
Cohesion: 0.20
Nodes (5): filterByQuery(), model, T, removeByPath(), calculateViewport()

### Community 70 - "Community 70"
Cohesion: 0.25
Nodes (5): filterNonEmptyEntries(), historyEntryFromScanResult(), displayPath(), TestDisplayPath(), filterMatches()

### Community 71 - "Community 71"
Cohesion: 0.20
Nodes (12): restore_scan_int_trap(), scan_applications(), _scan_dedupe_bundle_ids(), _scan_finalize_index(), _scan_resolve_uncached(), start_scan_spinner(), start_uninstall_metadata_refresh(), stop_scan_spinner() (+4 more)

### Community 72 - "Community 72"
Cohesion: 0.13
Nodes (14): bun-types, dependencies, commander, devDependencies, bun-types, typescript, commander, name (+6 more)

### Community 73 - "Community 73"
Cohesion: 0.30
Nodes (14): create_alfred_workflow(), create_raycast_commands(), detect_mo(), is_interactive(), log_error(), log_header(), log_step(), log_success() (+6 more)

### Community 74 - "Community 74"
Cohesion: 0.23
Nodes (12): dirEntry, historyEntry, TestSystemOverviewRootsDefaultsToRealSystemPaths(), model, snapshotFromModel(), createOverviewEntries(), createOverviewEntriesWithInsights(), hasPendingOverviewEntries() (+4 more)

### Community 75 - "Community 75"
Cohesion: 0.21
Nodes (14): acquireLock(), atomicWrite(), changed(), countValues(), errorCode(), exists(), holderIsDead(), openStore() (+6 more)

### Community 76 - "Community 76"
Cohesion: 0.19
Nodes (14): clean_conda_metadata_caches(), clean_corepack_cache(), clean_dev_mise(), clean_dev_nix(), clean_dev_npm(), clean_dev_python(), clean_pnpm_stores(), clean_pyinstaller_bincache() (+6 more)

### Community 77 - "Community 77"
Cohesion: 0.31
Nodes (13): brew_uninstall_cask(), _detect_cask_via_brew_list(), _detect_cask_via_caskroom_search(), _detect_cask_via_resolved_path(), _detect_cask_via_symlink_check(), _extract_cask_token_from_path(), get_brew_cask_name(), is_brew_cask_installed() (+5 more)

### Community 79 - "Community 79"
Cohesion: 0.26
Nodes (12): announce_action(), cleanup_all(), handle_interrupt(), json_get_value(), json_validate(), LANG, LC_ALL, main() (+4 more)

### Community 80 - "Community 80"
Cohesion: 0.15
Nodes (12): compilerOptions, allowImportingTsExtensions, module, moduleResolution, noEmit, skipLibCheck, strict, target (+4 more)

### Community 81 - "Community 81"
Cohesion: 0.22
Nodes (13): antigravity_or_gemini_running(), chrome_devtools_mcp_running(), clean_antigravity_caches(), clean_chrome_devtools_mcp_caches(), clean_chromium_default_caches(), clean_codex_cli(), clean_dev_jvm(), clean_dev_misc() (+5 more)

### Community 82 - "Community 82"
Cohesion: 0.44
Nodes (11): disable_touchid(), enable_touchid(), is_touchid_configured(), main(), PAM_TID_LINE, secure_install_pam(), touchid.sh script, show_menu() (+3 more)

### Community 83 - "Community 83"
Cohesion: 0.29
Nodes (9): mole script, interactive_main_menu(), is_touchid_configured(), main(), _main_menu_controls_line(), MOLE_CLI_ARGS, mole_collect_cli_args(), mole_dispatch_history_early() (+1 more)

### Community 84 - "Community 84"
Cohesion: 0.24
Nodes (10): leadingCPUProcess(), leadingMemoryProcess(), rootDisk(), statusDiagnosisLine(), shorten(), TestShorten(), TestStatusDiagnosisLineFallsBackToAllClear(), TestStatusDiagnosisLinePrioritizesFailingSMART() (+2 more)

### Community 85 - "Community 85"
Cohesion: 0.33
Nodes (10): NewRingBuffer(), TestNewRingBuffer(), TestRingBuffer_AddWithinCapacity(), TestRingBuffer_EmptyBuffer(), TestRingBuffer_ExactCapacity(), TestRingBuffer_MultipleWrapArounds(), TestRingBuffer_NegativeAndZeroValues(), TestRingBuffer_SingleElementBuffer() (+2 more)

### Community 86 - "Community 86"
Cohesion: 0.35
Nodes (7): NewProcessWatcher(), ProcessAlert, processIdentity, ProcessWatchConfig, ProcessWatcher, ProcessWatchOptions, trackedProcess

### Community 87 - "Community 87"
Cohesion: 0.33
Nodes (10): brew_autoremove_preview_has_items(), brew_cleanup_resolve_existing_path(), clean_homebrew(), restore_homebrew_active_links(), restore_homebrew_link(), run_brew_autoremove_preview(), run_homebrew_link_restore_as_invoking_user(), brew.sh script (+2 more)

### Community 88 - "Community 88"
Cohesion: 0.27
Nodes (10): MOLE_OPTIMIZE_CATALOG_LOADED, optimize_catalog_handler_for(), optimize_catalog_health_name_for(), optimize_catalog_index_for(), _optimize_catalog_register(), optimize_catalog_validate(), catalog.sh script, optimize_task_finish() (+2 more)

### Community 89 - "Community 89"
Cohesion: 0.27
Nodes (9): enforce_timeout_dependency_in_ci(), MOLE_GO_TEST_CACHE, MOLE_TEST_NO_AUTH, PATH, prepare_go_test_helpers(), report_slowest_test_files(), report_unit_result(), test.sh script (+1 more)

### Community 90 - "Community 90"
Cohesion: 0.27
Nodes (8): BytesBin(), BytesBinCompact(), BytesBinShort(), BytesSI(), TestBytesBin(), TestBytesBinCompact(), TestBytesBinShort(), TestBytesSI()

### Community 91 - "Community 91"
Cohesion: 0.27
Nodes (10): ensure_mole_temp_root(), ensure_safety_whitelist_patterns(), ensure_user_dir(), get_invoking_home(), get_user_home(), is_root_user(), load_mole_whitelist(), prepare_mole_tmpdir() (+2 more)

### Community 93 - "Community 93"
Cohesion: 0.25
Nodes (9): check_android_ndk(), check_multiple_versions(), check_rust_toolchains(), clean_dev_rust(), clean_rust_dependency_cache_root(), resolve_tool_home(), rust_build_process_state(), rust_cache_cleanup_state() (+1 more)

### Community 94 - "Community 94"
Cohesion: 0.22
Nodes (8): APPLE_UNINSTALLABLE_APPS, DATA_PROTECTED_BUNDLES, ENDPOINT_SECURITY_BUNDLE_PREFIXES, LAUNCH_AGENT_NAME_COMMON_WORDS, MOLE_APP_PROTECTION_DATA_LOADED, OFFICIAL_UNINSTALLER_RULES, app_protection_data.sh script, SYSTEM_CRITICAL_BUNDLES

### Community 95 - "Community 95"
Cohesion: 0.28
Nodes (9): flush_dns_cache(), is_ac_power(), needs_permissions_repair(), opt_disk_permissions_repair(), opt_network_optimization(), opt_periodic_maintenance(), opt_spotlight_index_optimize(), opt_system_maintenance() (+1 more)

### Community 96 - "Community 96"
Cohesion: 0.36
Nodes (7): BenchmarkGetDirectorySizeFromDuWithExcludeHomeLibrary(), TestGetDirectoryLogicalSizeWithExclude(), TestGetDirectorySizeFromDuSkippingImmediateChildDoesNotMeasureExcludedPath(), TestGetDirectorySizeFromDuWithIgnoresSkipsCloudPlaceholderTree(), TestValidateDuIgnoreNameRejectsPathPatterns(), writeFileWithSize(), testing.B

### Community 97 - "Community 97"
Cohesion: 0.50
Nodes (6): Collector, parseBluetoothctl(), parseSPBluetooth(), readBluetoothCTLDevices(), readSystemProfilerBluetooth(), BluetoothDevice

### Community 98 - "Community 98"
Cohesion: 0.36
Nodes (5): generate_health_json(), get_uptime_days(), json_escape(), MOLE_HEALTH_JSON_LOADED, health_json.sh script

### Community 99 - "Community 99"
Cohesion: 0.32
Nodes (7): check_diagnostic_guidance(), ICON_ERROR, ICON_LIST, ICON_SUCCESS, ICON_WARNING, check.sh script, usage()

### Community 100 - "Community 100"
Cohesion: 0.38
Nodes (7): countRecord(), frontierPrStateOrNull(), isRecord(), isUnknownArray(), parseFrontier(), previousSummary(), readFrontier()

### Community 101 - "Community 101"
Cohesion: 0.57
Nodes (6): collectMemory(), collectMemoryFast(), collectMemoryWithOptions(), getFileBackedMemory(), getMemoryPressure(), MemoryStatus

### Community 102 - "Community 102"
Cohesion: 0.53
Nodes (5): localSnapshotCommandRunner, localSnapshotMsg, detectLocalSnapshotsCmd(), localSnapshotProbeCmd(), parseLocalSnapshotCount()

### Community 104 - "Community 104"
Cohesion: 0.40
Nodes (5): uninstall_normalize_size_display(), MOLE_STEAM_UNINSTALL_LOADED, steam.sh script, uninstall_app_is_steam_launcher(), uninstall_steam_launcher_appid()

### Community 105 - "Community 105"
Cohesion: 0.40
Nodes (5): commanderPackagePath, currentInstallKey(), ensureDependenciesInstalled(), installKeyPath, nodeModulesDirectory

### Community 106 - "Community 106"
Cohesion: 0.47
Nodes (6): clean_codex_runtimes(), _codex_runtime_delete_guard_allows(), _codex_runtime_safe_clean_guarded(), _codex_runtime_size_human(), is_codex_runtime_active(), is_codex_runtime_stale()

### Community 107 - "Community 107"
Cohesion: 0.40
Nodes (4): apps_uncovered, is_covered(), audit_bundle_drift.sh script, system_uncovered

### Community 108 - "Community 108"
Cohesion: 0.53
Nodes (5): collect_functions(), find_groups(), main(), normalize(), Reduce a body to its structure: control flow, operators, call arity.

### Community 109 - "Community 109"
Cohesion: 0.60
Nodes (4): liveSortMode, liveScanSortModeFromEnv(), liveSortModeLabel(), nextLiveSortMode()

### Community 110 - "Community 110"
Cohesion: 0.70
Nodes (4): emit_fish_completions(), emit_zsh_subcommands(), remove_stale_completion_entries(), completion.sh script

### Community 111 - "Community 111"
Cohesion: 0.60
Nodes (5): draw_menu(), _get_items_per_page(), handle_interrupt(), restore_terminal(), select_installers()

### Community 112 - "Community 112"
Cohesion: 0.70
Nodes (4): pre-commit script, _fail(), _info(), _ok()

### Community 113 - "Community 113"
Cohesion: 0.50
Nodes (5): clean_dev_go(), clean_go_cache_root(), go_cache_process_state(), go_cache_root_physical_path(), _run_go_cache_clean_bound()

### Community 114 - "Community 114"
Cohesion: 0.60
Nodes (4): fix_broken_preferences(), _preference_plist_is_protected(), _repair_preference_plists_in_dir(), maintenance.sh script

### Community 115 - "Community 115"
Cohesion: 0.83
Nodes (3): main(), history.sh script, show_history_help()

### Community 116 - "Community 116"
Cohesion: 0.83
Nodes (3): capture(), hitl-loop.template.sh script, step()

### Community 117 - "Community 117"
Cohesion: 0.50
Nodes (3): counterDelta(), Collector, TestCounterDeltaClampsCounterReset()

### Community 119 - "Community 119"
Cohesion: 0.67
Nodes (3): format_app_display(), select_apps_for_uninstall(), app_selector.sh script

### Community 120 - "Community 120"
Cohesion: 0.83
Nodes (3): extract_minos(), check_release_minos.sh script, version_gt()

## Knowledge Gaps
- **380 isolated node(s):** `block-dangerous-git.sh script`, `nodeModulesDirectory`, `commanderPackagePath`, `installKeyPath`, `SUB_BLOCKS` (+375 more)
  These have ≤1 connection - possible missing edges or undocumented components.
- **21 thin communities (<3 nodes) omitted from report** — run `graphify query` to explore isolated nodes.

## Suggested Questions
_Questions this graph is uniquely positioned to answer:_

- **Why does `dirEntry` connect `Community 74` to `Community 32`, `Community 2`, `Community 69`, `Community 70`, `Community 14`, `Community 16`, `Community 53`, `Community 28`?**
  _High betweenness centrality (0.012) - this node is a cross-community bridge._
- **Why does `model` connect `Community 69` to `Community 74`, `Community 109`, `Community 14`, `Community 28`, `Community 62`?**
  _High betweenness centrality (0.008) - this node is a cross-community bridge._
- **Why does `MetricsSnapshot` connect `Community 24` to `Community 0`, `Community 97`, `Community 2`, `Community 36`, `Community 101`, `Community 41`, `Community 49`, `Community 84`, `Community 23`, `Community 22`, `Community 86`?**
  _High betweenness centrality (0.007) - this node is a cross-community bridge._
- **What connects `block-dangerous-git.sh script`, `nodeModulesDirectory`, `commanderPackagePath` to the rest of the system?**
  _380 weakly-connected nodes found - possible documentation gaps or missing edges._
- **Should `Community 0` be split into smaller, more focused modules?**
  _Cohesion score 0.06845238095238096 - nodes in this community are weakly interconnected._
- **Should `Community 1` be split into smaller, more focused modules?**
  _Cohesion score 0.053939714436805924 - nodes in this community are weakly interconnected._
- **Should `Community 2` be split into smaller, more focused modules?**
  _Cohesion score 0.06393442622950819 - nodes in this community are weakly interconnected._