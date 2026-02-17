 REQUIRE_NET_SYNC: cannot be changed on client and when connecting it's sent to the client
 SAVEGAME: stored when saving a savegame
 READONLY: can not be changed by the user
-------------------------

Command: uc_set_yaw 
script: 
help: 

variable: e_GI 
type: int
current: 1
help: Enable/disable global illumination. Default: 1 - enabled

variable: r_dofMinZ 
type: float
current: 0
help: Set dof min z distance, anything behind this distance will get out focus. (good default value 0.4) 


variable: mrac 
type: int
current: 0
help: 

variable: r_glowanamorphicflares 
type: int
current: 0
help: Toggles the anamorphic flares effect.
Usage: r_GlowAnamorphicFlares [0/1]
Default is 0 (off). Set to 1 to enable.

variable: watching_unit_movement_debug 
type: int
current: 0
help: 

variable: rope_skill_controller_cut_angvel 
type: float
current: 25.1327
help: 

variable: camera_use_shake 
type: int
current: 1
help: [0,1] off, on

variable: r_ShadowsUseClipVolume 
type: int
current: 0
help: 0=disable shadows clip volume, 1=enable shadows clip volume

variable: e_sky_type 
type: int
current: 1
help: Type of sky used: 0 (static), 1 (dynamic).

variable: cb_closeup_scale 
type: float
current: 1.6
help: 

variable: cb_closeup_speed 
type: float
current: 5
help: 

variable: r_texturesstreamingmipfading 
type: int
current: 0
help: (null)

variable: ca_DebugCommandBuffer DUMPTODISK
type: int
current: 0
help: if this is 1, it will print the amount of commands for the blend-buffer

variable: e_modelview_Prefab_light_offset_from_center 
type: float
current: 5
help: modelview Prefab light offset from the box's center

variable: p_wireframe_distance 
type: float
current: 5
help: Maximum distance at which wireframe is drawn on physics helpers

variable: movement_verify_min_z_pos 
type: float
current: -1
help: 

variable: input_debug 
type: int
current: 0
help: dev log

variable: lua_debugger 
type: int
current: 1
help: Enables the script debugger.
1 to trigger on breakpoints and errors
2 to only trigger on errors
Usage: lua_debugger [0/1/2]


variable: e_GIRSMSize 
type: int
current: 384
help: Set the default reflective shadow map size.
Default: 256 pixels for PC/128 for consoles, minimum: 64, maximum: 512

variable: lua_use_binary 
type: int
current: 1
help: use compiled lua source.
0 : use normal lua file (.lua)
1 : use compiled binary file (.alb)
Usage: lua_use_binary [0/1]


variable: cl_take_screen_shot 
type: int
current: 0
help: Flag for screen shot function

variable: mate_spawn_debug 
type: int
current: 0
help: pet spawn position show

variable: ai_DebugDrawBulletEvents DUMPTODISK
type: int
current: 0
help: Debug draw the bullet events the AI system processes. 0=disable, 1=enable.

variable: camera_move_slowdown 
type: float
current: 2
help: 

variable: sys_budget_tris_brush 
type: float
current: 50
help: 

variable: es_profileentities 
type: int
current: 0
help: 
Usage: 1,2,3
Default is 0 (off).

variable: r_HDRBrightThreshold DUMPTODISK
type: float
current: 6
help: HDR rendering bright threshold.
Usage: r_HDRBrightThreshold [Value]
Default is 3.0f

variable: g_localPacketRate 
type: float
current: 50
help: Packet rate locally on faked network connection

variable: r_OptimisedLightSetup 
type: int
current: 2
help: 

variable: e_lod_skin_ratio 
type: float
current: 1
help: LOD distance ratio for skin objects( ex: character

variable: r_cubemapgenerating 
type: int
current: 0
help: cube map genrating...

variable: movement_verify_detailed_warp_speed_too_fast 
type: float
current: 150
help: 

variable: ca_BlendOutTime 
type: float
current: 0.25
help: Blend out time in layer

variable: r_ShadowJittering 
type: float
current: 0.125
help: Activate shadow map jittering.
Usage: r_ShadowJittering [0=off, 1=on]


variable: r_ForceZClearWithColor 
type: int
current: 0
help: z Buffer Clear With Color

variable: log_AllowDirectLoggingFromAnyThread 
type: int
current: 0
help: When false log messages from another thread than the main thread are stored and outputed delayed

variable: ac_debugAnimEffects 
type: int
current: 0
help: Print log messages when anim events spawn effects.

variable: r_ErrorString 
type: string
current: no_error_message
help: Error String

variable: rope_skill_controller_fadeout_time 
type: float
current: 3000
help: 

variable: ai_NoUpdate 
type: int
current: 0
help: 

variable: e_stream_cgf 
type: int
current: 1
help: Debug

variable: effect_debug_filter_unit 
type: int
current: 0
help: unit id

variable: sys_memory_debug 
type: int
current: 0
help: Enables to activate low memory situation is specific places in the code (argument defines which place), 0=off

variable: movement_verify_max_packet_interval 
type: int
current: 1000
help: 

variable: e_obj_stats 
type: int
current: 0
help: Show instances count

variable: ac_debugAnimError 
type: int
current: 0
help: Display debug history graphs of anim error distance and angle.

variable: r_TexturesStreamingDebug 
type: int
current: 0
help:  1 : logs 
 2 : vacuum pools

variable: r_NoHWGamma DUMPTODISK
type: int
current: 0
help: Sets renderer to ignore hardware gamma correction.
Usage: r_NoHWGamma [0/1]
Default is 0 (allow hardware gamma correction).

variable: p_ray_fadein 
type: float
current: 0.2
help: Fade-in time for ray physics helpers

variable: effect_debug_state 
type: int
current: 0
help: Enable effect state
1 : helpers, 2 : sort by group, 4 : no empty group, 8 : no fx list

variable: e_terrain_deformations 
type: int
current: 0
help: Allows in-game terrain surface deformations

variable: ai_MaxSignalDuration 
type: float
current: 3
help: Maximum radius at which player can interact with other entities

variable: att_scale_test_drawn 
type: float
current: 1
help: 

variable: q_ShaderTerrain REQUIRE_APP_RESTART
type: int
current: 3
help: Defines the shader quality of Terrain
Usage: q_ShaderTerrain 0=low/1=med/2=high/3=very high (default)

variable: r_WaterReflectionsQuality DUMPTODISK
type: int
current: 4
help: Activates water reflections quality setting.
Usage: r_WaterReflectionsQuality [0/1/2/3]
Default is 0 (terrain only), 1 (terrain + particles), 2 (terrain + particles + brushes), 3 (everything)

variable: ca_AMC_SmoothTurn 
type: int
current: 1
help: If this is 1, then we smooth the turn speed

variable: option_use_water_reflection 
type: int
current: 1
help: Console variable group to apply settings to multiple variables

option_use_water_reflection [0/1/x]:
 ... r_WaterReflections = 0/1/1


variable: e_terrain_loading_log 
type: int
current: 0
help: Debug

variable: p_net_minsnapdist 
type: float
current: 0.1
help: Minimum distance between server position and client position at which to start snapping

variable: e_terrain_crater_depth_max 
type: float
current: 0.5
help: 

variable: r_shootingstar_respawnnow 
type: int
current: 0
help: Set to 1 to force a respawn now.

variable: ai_TimeToAggroCancelByNoSkill DUMPTODISK
type: float
current: 10
help: If no-skill-success time go over this value, AI will cancel aggro.

variable: name_tag_mode 
type: int
current: 0
help: render name tag of all units and doodads. 0(default), 1(battle), 2(life), 3(box)

variable: profile_disk_max_draw_items 
type: int
current: 10000
help: Set maximum number of IO statistics items to visualize
The default value is 2000
Usage: profile_disk_max_draw_items [num]

variable: instance_index 
type: int
current: -1
help: Instance Index

variable: r_CBStatic 
type: int
current: 0
help: Toggles per-instance CBs as static.
Usage: r_UseCBStatic [0/1]
Default is 1 (on). Set to 0 to use dynamic update of CB's per-instance.

variable: ca_DrawCC 
type: int
current: 1
help: if this is 0, will not draw the CC characters

variable: e_brush_streaming_dist_ratio 
type: float
current: 1
help: distance ratio to view distance for brush streaming

variable: ai_DebugDrawAStarOpenList DUMPTODISK
type: string
current: 0
help: Draws the A* open list for the specified AI agent.
Usage: ai_DebugDrawAStarOpenList [AI agent name]
Default is 0, which disables the debug draw. Requires ai_DebugPathfinding=1 to be activated.

variable: r_Scissor 
type: int
current: 1
help: Enables scissor test

variable: sys_streaming_sleep 
type: int
current: 0
help: 

variable: con_restricted RESTRICTEDMODE
type: int
current: 0
help: 0=normal mode / 1=restricted access to the console

variable: ag_logtransitions 
type: int
current: 0
help: Log animation graph transition calls to the console

variable: g_displayIgnoreList DUMPTODISK
type: int
current: 1
help: Display ignore list in chat tab.

variable: e_decals_hit_cache 
type: int
current: 1
help: Use smart hit cacheing for bullet hits (may cause no decals in some cases)

variable: dummy 
type: string
current: 
help: dummy for compiling

variable: camera_far_clip 
type: float
current: 0
help: 

variable: e_fog 
type: int
current: 1
help: Activates global height/distance based fog

variable: e_obj 
type: int
current: 1
help: Render or not all objects

variable: e_sun 
type: int
current: 1
help: Activates sun light source

variable: r_HDRPresets DUMPTODISK
type: int
current: 0
help: HDR rendering presets. Overrides user settings
Usage: r_HDRPresets [Value]
Default is 0 (user setup)1: Realistic mode2: Stylized mode

variable: r_TerrainSpecular_ColorB 
type: float
current: 0.498039
help: Reflected light colour (blue).

variable: r_TerrainSpecular_ColorG 
type: float
current: 0.596078
help: Reflected light colour (green).

variable: r_TerrainSpecular_ColorR 
type: float
current: 0.984314
help: Reflected light colour (red).

variable: e_modelview_Prefab_sunlight_color_x 
type: float
current: 3
help: x modelview sunlight color

variable: e_modelview_Prefab_sunlight_color_y 
type: float
current: 3
help: y modelview sunlight color

variable: e_modelview_Prefab_sunlight_color_z 
type: float
current: 3
help: z modelview sunlight color

variable: e_terrain_layer_test 
type: int
current: 1
help: turn off layer blending method

variable: e_view_dist_ratio_detail 
type: float
current: 30
help: View distance ratio for detail objects

variable: e_modelview_Prefab_sunlight_multiple 
type: float
current: 1.88
help: modelview sunlight specular multiplier

variable: sys_float_exceptions 
type: int
current: 0
help: Use or not use floating point exceptions.


variable: r_TerrainAO_FadeDist 
type: int
current: 8
help: Controls sky light fading in tree canopy in Z direction

variable: r_HDRGrainAmount 
type: float
current: 0.6
help: HDR digital noise amount
Usage: r_HDRDigitalNoise [Value]

variable: r_Log 
type: int
current: 0
help: Logs rendering information to Direct3DLog.txt.
Usage: r_Log [0/1/2/3/4]
	1: Logs a list of all shaders without profile info.
	2: Log contains a list of all shaders with profile info.
	3: Logs all API function calls.
	4: Highly detailed pipeline log, including all passes,
			states, lights and pixel/vertex shaders.
Default is 0 (off). Use this function carefully, because
log files grow very quickly.

variable: s_HDR DUMPTODISK
type: int
current: 1
help: Enable and disable HDR sound
Usage: s_HDR [0..1]Default is 1 (on)

variable: cl_debugFreezeShake DUMPTODISK
type: int
current: 0
help: Toggle freeze shake debug draw

variable: sv_voice_enable_groups 
type: int
current: 1
help: 

variable: ai_LogConsoleVerbosity DUMPTODISK
type: int
current: 0
help: None = 0, progress = 1, event = 2, comment = 3

variable: g_unit_collide_bottom_box_max_size_gap 
type: float
current: 3
help: 

variable: swim_jump_permission_range 
type: float
current: 0.2
help: jump height at surface (meter) 
default: 0.2

variable: cl_check_resurrectable_pos_debug 
type: int
current: 0
help: 

variable: x_float1 
type: float
current: 0
help: 

variable: x_float2 
type: float
current: 0
help: 

variable: x_float3 
type: float
current: 0
help: 

variable: ai_InterestScalingScan DUMPTODISK
type: float
current: 50
help: Scale the interest value given to passively scanning the environment

variable: ai_InterestScalingView DUMPTODISK
type: float
current: 1
help: Scale the interest value given to View interest items (e.g. a pretty castle, the horizon)

variable: r_StereoDevice DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 100
help: Sets stereo device (only possible before app start)
Usage: r_StereoDevice [0/1/2/3/4]
0: No stereo support (default)
1: Frame compatible formats (side-by-side, interlaced, anaglyph)
2: HDMI 1.4 (PS3 only)
3: Stereo driver (PC only, NVidia or AMD)
4: Dualhead (PC only, two projectors or iZ3D screen)
100: Auto-detect device for platform

variable: tip_of_day_number 
type: int
current: 0
help: fix tip of day number. 0: off, >0: set number

variable: http_password 
type: string
current: password
help: 

variable: d3d9_IBPools REQUIRE_APP_RESTART
type: int
current: 1
help: 

variable: movement_verify_gravity_height_tolerance 
type: float
current: 5
help: 

variable: e_foliage_broken_branches_damping 
type: float
current: 15
help: Damping of branch ropes of broken vegetation

variable: aim_assistAimEnabled 
type: int
current: 1
help: Enable/disable aim assitance on aim zooming

variable: sys_budget_dp_road 
type: float
current: 200
help: 

variable: tab_targeting_fan_angle 
type: float
current: 60
help: 

variable: custom_apply_dressing_gap 
type: float
current: 0.03
help: 

variable: ca_UseDecals 
type: int
current: 1
help: if set to 0, effectively disables creation of decals on characters
2 - alternative method of calculating/building the decals

variable: i_particleeffects DUMPTODISK
type: int
current: 1
help: Enable/Disable particles spawned during item effects.

variable: e_shadows_slope_bias 
type: float
current: 5
help: Shadows slope bias for shadowgen

variable: r_SSAODebug 
type: int
current: 0
help: ambient occlusion debug

variable: ag_breakmode 
type: int
current: 0
help: 1=Enable debug break mode; 2=also lock inputs

variable: pl_debug_jump2y_mult 
type: float
current: 0
help: 

variable: e_ShadowsTessellateDLights 
type: int
current: 0
help: Disable/enable tessellation for local lights shadows

variable: r_SSAOTemporalConvergence 
type: float
current: 0.7
help: Temporal SSAO update/convergence speed

variable: es_enable_full_script_save SAVEGAME, DUMPTODISK
type: int
current: 0
help: Enable (experimental) full script save functionality

variable: bot_short_test_mode 
type: int
current: 0
help: 0 : unuse, 1 : use

variable: e_CoverCgfDebug 
type: int
current: 0
help: Shows the cover setups on cfg files

variable: r_NightVisionSonarMultiplier 
type: float
current: 0.2
help: Set nightvision sonar hints color multiplier.


variable: r_ShadowsParticleKernelSize DUMPTODISK
type: float
current: 1
help: Blur kernel size for particles shadows.
Usage: r_ShadowsParticleKernelSize [0.0 hard edge - x for blur], 1. is default

variable: e_VoxTerMixMask 
type: int
current: 0
help: Store blend info, base color and normals in textures

variable: ss_max_warp_dist RESTRICTEDMODE
type: int
current: 256
help: maximum dist where camera can warp in 1 frame

variable: ca_MaxFaceLOD DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 1
help: Use face lod.

variable: sv_ship_mass_debug 
type: int
current: 0
help: 

variable: sys_game_folder 
type: string
current: Game_pak
help: Specifies the game folder to read all data from


variable: e_max_view_dst_full_dist_cam_height 
type: float
current: 1000
help: Debug

variable: s_ObstructionMaxPierecability 
type: float
current: 100
help: Normalizes accumulated pierecability value for obstruction.
Usage: s_ObstructionMaxPierecability [0..]
0:		 none
100:	 a sound that is obstructed by accumulated material pierecability of 50 gets half obstruction
Default is 100 

variable: e_VisareaFogFadingTime 
type: float
current: 2
help: VisareaFogFadingTime

variable: name_tag_fade_out_distance 
type: int
current: 40
help: set unit name tag fadeout distance

variable: sv_maxmemoryusage 
type: int
current: 0
help: Maximum memory a dedicated server is allowed to use

variable: r_PostProcessEffectsFilters 
type: int
current: 1
help: Enables post processing special effects filters.
Usage: r_PostProcessEffectsFilters [0/1]
Default is 1 (enabled). 0 disabled

variable: ca_DumpUsedAnims 
type: int
current: 0
help: writes animation asset statistics to the disk

variable: pl_debug_jump2z_mult 
type: float
current: 0
help: 

variable: e_deferred_loader_stats 
type: int
current: 0
help: 

variable: g_quickGame_ping2_level DUMPTODISK
type: int
current: 170
help: QuickGame option

variable: e_obj_tree_min_node_size 
type: int
current: 0
help: Debug draw of object tree bboxes

variable: r_SSAO_Visualise 
type: int
current: 0
help: Set to 1 to visualise either NVSSAO or SSDO as AO fullscreen [0/1]


variable: next_option_sound DUMPTODISK
type: int
current: 4
help: 

variable: r_GlitterSpecularPow 
type: float
current: 2
help: Sets glitter specular power.
Usage: r_GlitterSpecularPow n (default is 2.0f)
Where n represents a number: eg: 16.0

variable: sys_firstlaunch 
type: int
current: 0
help: Indicates that the game was run for the first time.

variable: ss_deferred_object_loading RESTRICTEDMODE
type: int
current: 1
help: 

variable: r_CustomResWidth 
type: int
current: 0
help: Width of custom resolution rendering

variable: aux_phys_exclude_hair 
type: int
current: 0
help: 

variable: e_material_stats 
type: int
current: 0
help: 

variable: e_character_light_min_dist 
type: float
current: 5
help: Character Light Min Dist

variable: e_foliage_branches_damping 
type: float
current: 10
help: Damping of branch ropes

variable: p_max_velocity 
type: float
current: 100
help: Clamps physicalized objects' velocities to this value

variable: e_gsm_focus_offset_type 
type: float
current: 0
help: focus offset for generate shadows

variable: s_OutputConfig DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 0
help: Sets up the preferred output configuration.
Usage: s_OutputConfig #
where # is a number between 0 and 3 representing
 0: AutoDetect
	1: DirectSound
	2: WAV-Writer
	3: WAV-Writer-NRT
Default is 0 (AutoDetect).

variable: aim_assistVerticalScale 
type: float
current: 0.75
help: The amount of emphasis on vertical correction (the less the number is the more vertical component is compensated)

variable: name_tag_icon_gap 
type: float
current: 0.2
help: nametag icon gap

variable: e_GICache 
type: int
current: 7
help: Sparse temporal caching for RSM rendering. Measured in framed per generation. Default: 7 Min: 0 (disabled)

variable: s_MusicSpeakerCenterVolume DUMPTODISK
type: float
current: 0
help: Sets the volume of the center speakers (front and back).
Usage: s_MusicSpeakerCenterVolume 0.0Default is 0.0.

variable: movement_verify_move_speed_sampling_time 
type: float
current: 1
help: 

variable: r_ReloadShaders 
type: int
current: 0
help: Reloads shaders.
Usage: r_ReloadShaders [0/1]
Default is 0. Set to 1 to reload shaders.

variable: e_view_dist_ratio 
type: float
current: 60
help: View distance ratio for objects

variable: aim_assistCrosshairDebug 
type: int
current: 0
help: debug crosshair aim assistance

variable: ai_IgnoreVisibilityChecks 
type: int
current: 0
help: Makes certain visibility checks (for teleporting etc) return false.

variable: r_TerrainSpecular_Strength 
type: float
current: 150
help: Scale specular reflection strength.

variable: r_texture_db_streaming_check_integrity 
type: int
current: 1
help: 

variable: e_particles_low_update_dist 
type: float
current: 100
help: particle low update dist

variable: r_TexNoAniso DUMPTODISK
type: int
current: 0
help: 

variable: camera_interaction_npc_fadein_time 
type: float
current: 1
help: 

variable: e_scissor_debug 
type: int
current: 0
help: Debug

variable: name_tag_large_app_stamp_offset_normal 
type: float
current: 10
help: large stamp app name tag offset

variable: s_PrecacheDuration 
type: float
current: 15
help: Sets the duration of pre-caching data after level load in seconds.
Usage: s_PrecacheDuration [0...n]
Default: 15


variable: p_profile_functions 
type: int
current: 0
help: Enables detailed profiling of physical environment-sampling functions

variable: cl_sprintBlur 
type: float
current: 0.6
help: sprint blur

variable: ai_PathfinderUpdateCount DUMPTODISK
type: int
current: 70000
help: How many times path finder work for a second?

variable: ai_ThreadedVolumeNavPreprocess DUMPTODISK
type: int
current: 1
help: Parallelizes volume navigation preprocessing by running it on multiple threads.
If you experience freezes during volume nav export or corrupted volume nav data, try turning this off. ;)

variable: e_VoxTerHeightmapEditingCustomLayerInfo 
type: int
current: 0
help: Debug

variable: r_FogDensityScale 
type: float
current: 1
help: Scales the fog density before submitting it to the shaders (0-1). Can be used when adjusting view distance.


variable: r_GeomInstancingThreshold 
type: int
current: 0
help: If the instance count gets bigger than the specified value the instancing feature is used.
Usage: r_GeomInstancingThreshold [Num]
Default is 0 (automatic depending on hardware, used value can be found in the log)

variable: g_show_loot_window 
type: int
current: 0
help: 0(hide), 1(show)

variable: pl_fall_start_velocity 
type: float
current: 10
help: Velocity for starting freefall signal.

variable: name_tag_hp_bg_height_offset 
type: float
current: 11
help: nametag hp bg height offset

variable: r_visareavolumeoversize 
type: float
current: 2.5
help: visarea volume over size

variable: camera_dive_angle 
type: int
current: 30
help: 

variable: i_xinput 
type: int
current: 1
help: Number of XInput controllers to process
Usage: i_xinput [0/1/2/3/4]
Default is 1.

variable: sound_enable_bubble_effect_voice 
type: int
current: 1
help: bubble effect voice (enable : 1, disable : others)

variable: cl_debugBasequat 
type: int
current: 0
help: 

variable: e_terrain_texture_debug 
type: int
current: 0
help: Debug

variable: r_ShadersAsyncReading 
type: int
current: 1
help: 

variable: e_StreamPredictionDistanceNear 
type: float
current: 0
help: Prediction distance for streaming, affets LOD of objects

variable: camera_dive_pitch 
type: float
current: 20
help: 

variable: cl_ship_submerge_update_freq 
type: int
current: 16
help: 

variable: ac_debugSelectionParams 
type: int
current: 0
help: Display graph of selection parameters values.

variable: decoration_smart_positioning_max_dist 
type: float
current: 5
help: (null)

variable: cr_rotateDampingMax 
type: float
current: 0
help: 

variable: i_staticfiresounds DUMPTODISK
type: int
current: 1
help: Enable/Disable static fire sounds. Static sounds are not unloaded when idle.

variable: r_CreateZBufferTexture REQUIRE_APP_RESTART
type: int
current: 1
help: Enables creating of a texture for the main depth texture for D3D9. This allows us to read back from the main depth buffer (which is required for extreme low spec mode).

variable: p_count_objects 
type: int
current: 0
help: 

variable: auto_self_targeting 
type: int
current: 1
help: auto self targeting for helpful skill

variable: pl_zeroGGyroFadeExp 
type: float
current: 2
help: ZeroG gyro angle bias (default is 2.0).

variable: ca_DrawLocator 
type: int
current: 0
help: if this is 1, we will draw the body and move-direction. If this is 2, we will also print out the move direction

variable: e_view_dist_ratio_light 
type: float
current: 0.3
help: View distance ratio multiply

variable: r_TerrainSpecular_Model 
type: int
current: 1
help: 1 for Cook-Torrence specular model, or 0 for phong specular. The highlight shape is very different on extreme angles.

variable: ca_DrawVEGInfo 
type: int
current: 0
help: if set to 1, the VEG debug info is drawn

variable: r_texStagingMaxCount 
type: int
current: 64
help: 

variable: ship_rudder_force 
type: float
current: 1
help: 

variable: r_meshHoldMemDuration 
type: int
current: 10000
help: time(in msec) of system buffer GC period when eRMT_HoldSystem is set

variable: ai_DrawFakeHitEffects DUMPTODISK
type: int
current: 0
help: Draws fake hit effects the player.

variable: g_unit_collide_rear_bound_rate 
type: float
current: 0.6
help: 

variable: cl_frozenMouseMult 
type: float
current: 0.00015
help: Frozen mouseshake multiplier

variable: r_TexAtlasSize 
type: int
current: 2048
help: 

variable: q_ShaderPostProcess REQUIRE_APP_RESTART
type: int
current: 3
help: Defines the shader quality of PostProcess
Usage: q_ShaderPostProcess 0=low/1=med/2=high/3=very high (default)

variable: option_hide_mobilization_order 
type: int
current: 0
help: 0(show), 1(hide)

variable: r_EnvCMResolution DUMPTODISK
type: int
current: 2
help: Sets resolution for target environment cubemap, in pixels.
Usage: r_EnvCMResolution #
where # represents:
	0: 64
	1: 128
	2: 256
Default is 2 (256 by 256 pixels).

variable: s_FileCacheManagerSize REQUIRE_APP_RESTART
type: int
current: 50
help: 

variable: s_StreamDialogIntoMemory 
type: int
current: 1
help: Toggles if dialog are streamed into main memory or FMOD makes a copy for itself.
Usage: s_StreamDialogIntoMemory [0/1]
Default is 1 (on) on PC, and 0 (off) on XBox.

variable: p_max_substeps 
type: int
current: 5
help: Limits the number of substeps allowed in variable time step mode.
Usage: p_max_substeps 5
Objects that are not allowed to perform time steps
beyond some value make several substeps.

variable: ca_gc_debug 
type: int
current: 0
help: 

variable: s_PreloadWeaponProjects 
type: int
current: 0
help: Toggles if weapon project files (w_*) are fully preloaded into memory to centralize allocations and reads.
Usage: s_PreloadWeaponProjects [0/1]
Default is 0 (off).

variable: sys_budget_particle_game 
type: float
current: 500
help: 

variable: sys_budget_particle_item 
type: float
current: 100
help: 

variable: r_OceanSectorSize 
type: int
current: 128
help: 

variable: e_object_streaming_log 
type: int
current: 0
help: Debug

variable: name_tag_outline 
type: int
current: 1
help: name tag outline

variable: ui_modelview_enable DUMPTODISK
type: int
current: 1
help: 

variable: ai_DrawFormations DUMPTODISK
type: int
current: 0
help: Draws all the currently active formations of the AI agents.
Usage: ai_DrawFormations [0/1]
Default is 0 (off). Set to 1 to draw the AI formations.

variable: vehicle_controller_debug_speed 
type: int
current: 1
help: speed multiplier

variable: sys_LowSpecPak 
type: int
current: 0
help: use low resolution textures from special pak file or emulate if no such pak exists
0=don't use lowspec.pak (full texture quality)
1=use lowspec.pak (faster loading of textures, reduced texture quality)
Usage: sys_LowSpecPak 0/1

variable: r_texturesstreamingResidencyThrottle 
type: float
current: 0.5
help: Ratio for textures to become resident.
Usage: r_TexturesStreamingResidencyThrottle [ratio]Default is 0.5Max is 1.0 means textures will become resident sooner, Min 0.0 means textures will not become resident

variable: e_shadows_cull_terrain_accurately 
type: int
current: 1
help: When set to 1, terrain elements that cannot possibly cast shadows into the frustum will be culled from VSM shadow render. Don't use when VSM generation is spread over several frames.

variable: show_ladder 
type: int
current: 0
help: Show $ladder

variable: r_desireWidth DUMPTODISK
type: int
current: 1920
help: desire screen width.


variable: e_GsmExtendLastLodUseVariance 
type: int
current: 0
help: Enable Variance Shadow mapping on shadows from terrain

variable: sys_budget_triangles 
type: float
current: 200
help: 

variable: e_modelview_Prefab_cam_dist 
type: float
current: -10
help: modelview Prefab scale cam distance

variable: cl_righthand 
type: int
current: 1
help: Select right-handed weapon!

variable: gt_show 
type: int
current: 0
help: Show Game Tokens with values started from specified parameter

variable: log_Verbosity DUMPTODISK
type: int
current: 2
help: defines the verbosity level for console log messages (use log_FileVerbosity for file logging)
-1=suppress all logs (including eAlways)
0=suppress all logs(except eAlways)
1=additional errors
2=additional warnings
3=additional messages
4=additional comments

variable: r_DeferredDecals 
type: int
current: 3
help: Toggles deferred decals.
Usage: r_DeferredDecals [0/1]
Default is 1 (general pass darken), 2 (light buffer darken), 3 (alpha blended), 0 Disables. 

variable: ai_UpdateAllAlways 
type: int
current: 0
help: If non-zero then over-rides the auto-disabling of invisible/distant AI

variable: ai_DrawNavType DUMPTODISK
type: int
current: 0
help: Draw nav. type under AI object by cylinder
Usage: ai_DrawNavType [0/1/2]
Default is 0 (off). 0 = Off, 1 = Draw only for Character, 2 = Draw for all AI objs

variable: net_actor_sync_period 
type: int
current: 100
help: sending movement sync packet period (ms)

variable: p_notify_epsilon_rigid 
type: float
current: 0.001
help: 

variable: e_brushes 
type: int
current: 1
help: Draw brushes

variable: e_modelview_Prefab_add_scale_ratio 
type: float
current: 0
help: modelview prefab add scale ratio

variable: name_tag_hp_color_multiplier_on_bgmode 
type: float
current: 0.5
help: nametag hp bar color multiplier on bgmode

variable: e_DeferredPhysicsEvents 
type: int
current: 1
help: Enable to Perform some physics events deferred as a task/spu job

variable: r_RainIgnoreNearest 
type: int
current: 1
help: Disables rain wet/reflection layer for nearest objects
Usage: r_RainIgnoreNearest [0/1]


variable: ca_item_offset_debug 
type: int
current: 0
help: 

variable: gameoption_finalize_update 
type: int
current: 0
help: update current datas

variable: s_PlaybackFilter 
type: int
current: 0
help: Toggles filter to select certain sounds to be played only.
Default is 0 (off).
1 : Only Voice Sounds
2 : No Voice Sounds
+a : Ambience
+b : Ambience Oneshots
+c : Collisions
+d : Dialog
+e : MP Chat
+f : Footsteps
+g : General Physics
+h : HUD
+i : Unused
+j : FlowGraph
+k : Unused
+l : Living Entity
+m : Mechanic Entity
+n : NanoSuit
+o : SoundSpot
+p : Particles
+q : AI Pain/Death
+r : AI Readability
+s : AI Readability Response
+t : TrackView
+u : Projectile
+v : Vehicle
+w : Weapon
+x : Explosion
+y : Player Foley
+z : Animation
Usage: s_PlaybackFilter [1,2,a..z].

variable: ca_NoAnim 
type: int
current: 0
help: the animation isn't updated (the characters remain in the same pose)

variable: ca_UseIMG_CAF 
type: int
current: 0
help: if 1, then we use the IMG file. In development mode it is suppose to be off

variable: e_phys_ocean_cell 
type: float
current: 0.5
help: Cell size for ocean approximation in physics, 0 assumes flat plane

variable: r_NVDOF_BokehIntensity 
type: float
current: 0.02
help: Controls the brightness of the bokeh artifacts (default 0.02). Raise this number to make the bokeh artifacts more apparent.


variable: option_game_log_life_time DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 0
help: game logs life time. default is 0 (disable).

variable: ca_UseLookIK 
type: int
current: 1
help: If this is set to 1, then we are adding a look-at animation to the skeleton

variable: g_emp_style 
type: int
current: 0
help: 

variable: r_AllowHardwareSRGBWrite 
type: int
current: 1
help: Enables use of hardware SRGB write support (where it exists).
Set to 1 to use the hardware support, or 0 to fall back to shader emulation.

variable: r_HDROffset DUMPTODISK
type: float
current: 10
help: HDR rendering range offset (color multiplier tweak together with hdr level)
Usage: r_HDROffset [Value]
Default is 10.0f

variable: picking_distance 
type: float
current: 300
help: in meter

variable: e_level_auto_precache_terrain_and_proc_veget 
type: float
current: 1
help: Force auro pre-cache of terrain textures and procedural vegetation

variable: r_NVSSAO_CoarseAO 
type: float
current: 1
help: Scale factor for the coarse AO, the greater the darker. from 0.0 to 1.0. 


variable: e_terrain_texture_buffers 
type: int
current: 640
help: 

variable: cl_frozenAngleMax 
type: float
current: 10
help: Frozen clamp angle max

variable: cl_frozenAngleMin 
type: float
current: 1
help: Frozen clamp angle min

variable: map_show_zone_sectors 
type: int
current: 0
help: show sectors in world map (0 : off, 1 : on)

variable: effect_filter_loop 
type: int
current: 0
help: 1 : no loop, 2 : only loop

variable: e_StreamPredictionAheadDebug 
type: float
current: 0
help: Draw ball at predicted position

variable: e_gsm_lods_num 
type: int
current: 4
help: Number of GSM lods (0..4)

variable: p_single_step_mode 
type: int
current: 0
help: Toggles physics system 'single step' mode.Usage: p_single_step_mode [0/1]
Default is 0 (off). Set to 1 to switch physics system (except
players) to single step mode. Each step must be explicitly
requested with a 'p_do_step' instruction.

variable: force_show_weapon_visual 
type: int
current: 0
help: 1 : on, other : off

variable: pepsiman 
type: string
current: 
help: modelName

variable: e_gsm_cache_lod_offset 
type: int
current: 3
help: Makes first X GSM lods not cached

variable: camera_dive_start_depth 
type: float
current: 2
help: 

variable: e_level_auto_precache_textures_and_shaders 
type: float
current: 0
help: Force auro pre-cache of general textures and shaders

variable: e_VoxTerPlanarProjection 
type: int
current: 0
help: Debug

variable: r_SSAO_radius_multipler 
type: float
current: 5
help: radius multipler for FarRadius

variable: ai_InterestEnableScan DUMPTODISK
type: int
current: 0
help: Enable interest system scan mode

variable: ai_SightRangeMediumIllumMod SAVEGAME
type: float
current: 0.8
help: Multiplier for sightrange when the target is in medium light condition.

variable: departure_server_passport_pass_high 
type: int
current: 0
help: departure_server_passport_pass_high

variable: r_RainMaxViewDist 
type: float
current: 32
help: Sets rain max view distance
Usage: r_RainMaxViewDist 


variable: s_ErrorSound 
type: int
current: 1
help: Toggles error sound playback.
Usage: s_ErrorSound [0/1]
Default is 1 (on).

variable: r_MaxSuitPulseSpeedMultiplier 
type: float
current: 1
help: Max suit pulse speed multiplier - default = 1.0

variable: ai_DrawFakeDamageInd DUMPTODISK
type: int
current: 0
help: Draws fake damage indicators on the player.

variable: hr_rotateFactor 
type: float
current: -0.1
help: rotate factor

variable: name_tag_offset 
type: float
current: 5
help: nametag offset from hp bar

variable: net_phys_pingsmooth 
type: float
current: 0.1
help: 

variable: aln_debug_filter 
type: string
current: 
help: 

variable: ca_UseAimIK 
type: int
current: 1
help: If this is set to 1, then we are adding a look-at animation to the skeleton

variable: ca_travelSpeedScaleMax 
type: float
current: 2
help: Maximum motion travel speed scale (default 2.0).

variable: ca_travelSpeedScaleMin 
type: float
current: 0.5
help: Minimum motion travel speed scale (default 0.5).

variable: ca_DrawAttachmentOBB 
type: int
current: 0
help: if this is 0, will not draw the attachments objects

variable: name_tag_text_line_offset 
type: float
current: 0.4
help: name tag text line offset

variable: r_RainOccluderSizeTreshold 
type: float
current: 25
help: Only objects bigger than this size will occlude rain

variable: e_gsm_extra_range_shadow_texture_size 
type: int
current: 2048
help: Set maximum resolution of shadow map
256(faster), 512(medium), 1024(better quality)

variable: departure_server_passport_pass_low 
type: int
current: 0
help: departure_server_passport_pass_low

variable: ca_UseMorph 
type: int
current: 1
help: the morph skinning step is skipped (it's part of overall skinning during rendering)

variable: r_LogTexStreaming 
type: int
current: 0
help: Logs streaming info to Direct3DLogStreaming.txt
0: off
1: normal
2: extended

variable: r_TexMinAnisotropy REQUIRE_LEVEL_RELOAD
type: int
current: 16
help: 

variable: p_max_object_splashes 
type: int
current: 3
help: Specifies how many splash events one entity is allowed to generate

variable: ui_align_line_feed 
type: int
current: 0
help: 

variable: sys_logallocations DUMPTODISK
type: int
current: 0
help: Save allocation call stack

variable: g_stressTestCustomizer 
type: int
current: 0
help: 

variable: sys_entities 
type: int
current: 1
help: Enables Entities Update

variable: ac_debugText 
type: int
current: 0
help: Display entity/animation location/movement values, etc.

variable: um_decal_shadow_ratio 
type: float
current: 1
help: decal shadow size ratio

variable: r_VegetationSpritesGenDebug 
type: int
current: 0
help: 

variable: r_ShadersNoCompile 
type: int
current: 0
help: 

variable: ac_forceNoSimpleMovement 
type: int
current: 0
help: Force disable simplified movement

variable: fixed_time_step 
type: float
current: 0
help: Game updated with this fixed frame time

variable: r_SSGIQuality 
type: int
current: 2
help: SSGI quality level

variable: MemStatsMaxDepth 
type: int
current: 4
help: 

variable: name_tag_render_shadow 
type: int
current: 1
help: render nametag shadow

variable: e_cbuffer_debug 
type: int
current: 0
help: Display content of main camera coverage buffer

variable: d3d9_pip_buff_size REQUIRE_APP_RESTART
type: float
current: 120
help: 

variable: name_tag_hostile_show 
type: int
current: 1
help: render name tag of friendly unit

variable: r_StereoOutput DUMPTODISK
type: int
current: 0
help: Sets stereo output. Output depends on the stereo monitor
Usage: r_StereoOutput [0=off/1/2/3/4/5/6]
0: Standard
1: IZ3D
2: Checkerboard (not supported on X360)
3: Above and Below (not supported)
4: Side by Side
5: Line by Line (Interlaced)
6: Anaglyph


variable: r_SSReflCutoff 
type: float
current: 0.2
help: Glossiness value below which reflections are disabled

variable: name_tag_hp_width_on_bgmode 
type: float
current: 158
help: nametag hp bar width on bgmode

variable: ca_DrawSkeleton 
type: int
current: 0
help: if set to 1[skeleton anim bones], 2[defaut skeleton],  the skeleton is drawn

variable: e_particles_max_screen_fill 
type: float
current: 64
help: Max screen-fulls of particles to draw

variable: sys_dev_script_folder READONLY
type: string
current: Code/scripts
help: 

variable: e_character_light 
type: int
current: 1
help: Activates character light source

variable: e_decals_max_static_mesh_tris 
type: int
current: 5000
help: Limit Max Triangle of Decals

variable: s_Obstruction REQUIRE_APP_RESTART
type: int
current: 1
help: Toggles sound obstruction effect.
Usage: s_Obstruction [0..2]
0: off
1: DSP based obstruction
2: volume based obstruction
Default is 1 (DSP).

variable: combat_sync_framehold 
type: float
current: 0
help: FrameHold at combat_sync animation event[0(off)|+(holdtime)]
default: 0(off)

variable: sys_affinity_main 
type: int
current: -1
help: Specifies the thread affinity main thread will run on. can be auto detected while startup

variable: r_ProfileChar 
type: int
current: 0
help: Enables display of character LOD information.
Usage: r_ProfileChar [0/1]
Default is 0 (off). Set to 1 to display profiling

variable: r_ProfileDIPs 
type: int
current: 1
help: 0=disabled, 1=profile each DIP performance (may cause very low frame rate)
r_ProfileShaders needs to be activated to see the statistics

variable: VisibleMyEquipInfo 
type: int
current: 1
help: visible my equip info

variable: g_spectatorcollisions 
type: int
current: 1
help: If set, spectator camera will not be able to pass through buildings

variable: mfx_Enable 
type: int
current: 1
help: Enables MaterialEffects.

variable: r_TessellationDebug 
type: int
current: 0
help: 1 - Factor visualizing.
Default is 0

variable: e_water_ocean 
type: int
current: 2
help: Activates drawing of ocean
1: use usual rendering path
2: use fast rendering path with merged fog

variable: es_LogDrawnActors 
type: int
current: 0
help: Log all actors rendered each frame

variable: ca_gc_max_count 
type: int
current: 30
help: 

variable: s_VisAreasPropagation DUMPTODISK
type: int
current: 5
help: Sets the vis area propagation number.
Usage: s_VisAreasPropagation 5
Default is 5. This number defines how far sound will
propagate, in vis areas from the player's position. A
value of 1 means the sound is only heard in the current
vis area, while 3 means sound is heard in adjacent areas
which are connected by one portal.

variable: ca_StoreAnimNamesOnLoad 
type: int
current: 0
help: stores the names of animations during load to allow name lookup for debugging

variable: e_water_waves 
type: int
current: 0
help: Activates drawing of water waves

variable: e_custom_build_extramaps_fromshaderquality 
type: int
current: 3
help: 0x01 skip normal texture and 0x02 gloss texture when in low quality shader mode

variable: e_modelview_Prefab_light_color_rgb 
type: float
current: 0
help: modelview Prefab light source red, green, and blue color

variable: es_FarPhysTimeout 
type: float
current: 4
help: Timeout for faraway physics forceful deactivation

variable: ui_modelview_update_times DUMPTODISK
type: int
current: 1
help: 

variable: expr_mode DUMPTODISK
type: string
current: static
help: expr mode [dynamic/static/safe_static]

variable: g_aimdebug 
type: int
current: 0
help: Enable/disable debug drawing for aiming direction

variable: r_VegetationSpritesNoGen 
type: int
current: 0
help: 

variable: net_bw_aggressiveness 
type: float
current: 0.5
help: Balances TCP friendlyness versus prioritization of game traffic

variable: r_UseSoftParticles 
type: int
current: 1
help: Enables soft particles.
Usage: r_UseSoftParticles [0/1]


variable: r_TexturesStreamPoolSize 
type: int
current: 1024
help: 

variable: s_SoundInfo 
type: int
current: 0
help: Toggles onscreen sound statistics.
Usage: s_SoundInfo [0..9]
1: simple list of playing sounds.
2: extended list of looping sounds.
3: extended list of oneshot sounds.
4: list of lost sounds.
5: list of event soundbuffers.
6: list of sample soundbuffers (dialog).
7: list of wavebanks.
8: displays music information.
9: displays sound moods.
10 shows Sound Moods values set within FMOD.
11 Shows memory usage by project.
12 Shows memory usage by project/group.
13 Shows memory usage by project/group:sound.
14 hows overall memory stats.
15 shows X2 Sound logs.
Default is 0 (off).

variable: r_ThermalVisionViewCloakFrequencyPrimary 
type: int
current: 1
help: Sets thermal vision cloaked-object flicker primary frequency.
Usage: r_ThermalVisionViewCloakFrequencyPrimary [1+]
When looking at a refracting (cloaked) object sets the inverse frequency of the primary sine wave for the objects heat. Higher = slower

variable: s_XMADecoders REQUIRE_APP_RESTART
type: int
current: 0
help: Sets maximum number of XMA Decoder.
Usage: s_XMADecoders 32
0:			<auto>, PC:0, PS3:0, X360:48
Default is 0 <auto>.

variable: e_mesh_simplify 
type: float
current: 0
help: Mesh simplification debugging

variable: r_DeferredShadingCubeMaps 
type: int
current: 0
help: Toggles deferred cube maps.
Usage: r_DeferredShadingCubeMaps [0/1]
Default is 1 (enabled), 0 Disables

variable: e_vegetation_use_terrain_color 
type: int
current: 1
help: Allow blend with terrain color for vegetations

variable: r_NVSSAO_Radius 
type: float
current: 8
help: The AO radius in metaers.


variable: ai_SimpleWayptPassability DUMPTODISK
type: int
current: 1
help: Use simplified and faster passability recalculation for human waypoint links where possible.

variable: r_PostProcessHUD3D 
type: int
current: 1
help: Toggles 3d hud post processing.
Usage: r_PostProcessHUD3D [0/1]
Default is 1 (post process hud enabled). 0 Disabled

variable: ca_SmoothStrafeWithAngle 
type: int
current: 0
help: Use strafe smooth angle.

variable: g_actor_use_footstep_effect 
type: int
current: 1
help: 

variable: follow_max_distance 
type: int
current: 30
help: distance to allow follow (m)

variable: r_OceanRendType 
type: int
current: 0
help: 

variable: e_max_view_dst 
type: int
current: 2000
help: Far clipping plane distance

variable: e_obj_quality 
type: int
current: 4
help: Current object detail quality

variable: r_AllowFP16Meshes 
type: int
current: 1
help: Set to 1 to allow 16 bit vertex format for static meshes.
(0 will force 32 bit for both position and texture coordinates.)
Note that this only applies to certain meshes -- mostly things loaded from cfg files.
Dynamic geometry, terrain, roads & water may not be affected.

variable: e_lod_max 
type: int
current: 6
help: Max LOD for objects

variable: e_lod_min 
type: int
current: 0
help: Min LOD for objects

variable: sys_ProfileLevelLoading 
type: int
current: 0
help: Output level loading stats into log
0 = Off
1 = Output basic info about loading time per function
2 = Output full statistics including loading time and memory allocations with call stack info

variable: delay_mul_for_zh_cn_letter 
type: float
current: 3.2
help: delay for zh cn letter

variable: e_time_of_day 
type: float
current: 14.4646
help: Current Time of Day

variable: ca_Test 
type: int
current: 0
help: 

variable: ca_thread DUMPTODISK
type: int
current: 1
help: If >0 enables Animation Multi-Threading.

variable: g_debug_physicalize_rigid 
type: int
current: 0
help: 0 : off, 1 : on

variable: sys_vtune 
type: int
current: 0
help: 

variable: e_time_of_day_engine_update 
type: int
current: 1
help: Update 3dEngine for Time of Day

variable: camera_move_speed 
type: float
current: 20
help: 

variable: ca_stream_cal 
type: int
current: 1
help: [0,1] turn on/off cal streaming

variable: ca_stream_cdf 
type: int
current: 1
help: [0,1] turn on/off cdf streaming

variable: ca_stream_chr 
type: int
current: 1
help: [0,1] turn on/off chr streaming

variable: ag_adjustToCatchUp 
type: int
current: 0
help: Adjust requested move direction of animation to catch up with entity

variable: login_camera_zoom_velocity_power 
type: float
current: 1.8
help: 

variable: p_accuracy_MC 
type: float
current: 0.005
help: Desired accuracy of microcontact solver (velocity-related, m/s)

variable: ca_MergeMaxNumLods 
type: int
current: 3
help: Max Lod levels for Merging Character RenderMesh

variable: aux_use_weapon 
type: int
current: 1
help: 

variable: ai_DrawNodeLinkType 
type: int
current: 0
help: Sets the link parameter to draw with ai_DrawNode.
Values are:
0 - pass radius (default)
1 - exposure
2 - water max depth
3 - water min depth

variable: s_MaxActiveSounds DUMPTODISK
type: int
current: 100
help: Sets the maximum number of active sounds.


variable: e_shadows_frustums 
type: int
current: 0
help: Debug

variable: g_profile 
type: int
current: 0
help: 

variable: cl_actorsafemode 
type: int
current: 0
help: Enable/disable actor safe mode

variable: r_ShadowsSlopeScaleBias DUMPTODISK
type: float
current: 1.8
help: Select shadow map bluriness if r_ShadowBlur is activated.
Usage: r_ShadowBluriness [0.1 - 16]


variable: ca_UseDBA 
type: int
current: 0
help: if you set this to 0, there won't be any
frequest warnings from the animation system

variable: ai_UpdateProxy 
type: int
current: 1
help: Toggles update of AI proxy (model).
Usage: ai_UpdateProxy [0/1]
Default is 1 (on). Updates proxy (AI representation in game)
set to 0 to disable proxy updating.

variable: option_custom_addon_fonts DUMPTODISK
type: int
current: 0
help: Enable/Disable addon custom fonts

variable: pl_zeroGEnableGBoots 
type: int
current: 0
help: Switch G-Boots action on/off (if button assigned).

variable: rope_skill_controller_maxforce 
type: float
current: 200000
help: 

variable: sound_target_combat_sound_volume 
type: float
current: 0.5
help: target = player. [0.0 - 1.0]

variable: ca_UseLinearOP 
type: int
current: 0
help: if this is 1, it will get Linear OP value

variable: e_character_light_color_b 
type: float
current: 1
help: character light source blue color

variable: e_character_light_color_g 
type: float
current: 1
help: character light source green color

variable: e_character_light_color_r 
type: float
current: 1
help: character light source red color

variable: e_stream_for_physics 
type: int
current: 1
help: Debug

variable: r_NVSSAO_AmbientLightOcclusion_HighQuality 
type: float
current: 0.6
help: Scales the effect of ambient occlusion for ambient/indirect light (high quality NVSSAO setting). 0 to 1. Default: .6

variable: pl_zeroGGyroFadeAngleInner 
type: float
current: 20
help: ZeroG gyro inner angle (default is 20).

variable: mfx_pfx_minScale 
type: float
current: 0.5
help: Min scale (when particle is close)

variable: r_MergeRenderChunks 
type: int
current: 1
help: 

variable: rope_skill_controller_swing_force 
type: float
current: 1
help: 

variable: p_damping_group_size 
type: int
current: 8
help: Sets contacting objects group size
before group damping is used.Usage: p_damping_group_size 3
Used for internal tweaking only.

variable: pl_zeroGGyroFadeAngleOuter 
type: float
current: 60
help: ZeroG gyro outer angle (default is 60).

variable: g_ragdoll_damping_max 
type: float
current: 0.8
help: 0 : off, 1 : on

variable: s_SFXVolume DUMPTODISK
type: float
current: 1
help: Sets the percentile volume of the sound effects.
Usage: s_SFXVolume 0.5
Default is 1, which is full volume.

variable: db_location DUMPTODISK
type: string
current: game\db\compact.sqlite3
help: 

variable: ca_LodCountMax 
type: int
current: 5
help: 

variable: ag_logsounds 
type: int
current: 0
help: AGSound logging

variable: test_world_congestion 
type: int
current: 0
help: 0 : low, 1 : middle, 2 : high

variable: ac_animErrorClamp 
type: int
current: 1
help: Forces the animation to stay within the maximum error distance/angle.

variable: cl_ship_mass_update_freq 
type: int
current: 16
help: 

variable: sys_PakLogMissingFiles 
type: int
current: 0
help: If non-0, missing file names go to mastercd/MissingFilesX.log.
1) only resulting report
2) run-time report is ON, one entry per file
3) full run-time report

variable: e_particles_gc_period 
type: int
current: 30000
help: Particle garbage collection timer (ms)

variable: cl_cef_use_x2_log 
type: int
current: 0
help: set use x2 log system in cef subprocess

variable: name_show_tag_sphere 
type: int
current: 0
help: show nametag bounding sphere

variable: net_highlatencythreshold 
type: float
current: 0.5
help: 

variable: r_PostAAMode 
type: int
current: 2
help: Enables supported AA modes.
Usage: r_PostAAMode [1: to enable 2x distributed SSAA, 2: video capture mode (TBD)

variable: e_GINumCascades 
type: int
current: 1
help: Sets number of cascades for global illumination. Default: 1

variable: fg_SystemEnable 
type: int
current: 1
help: Toggles FlowGraph System Updates.
Usage: fg_SystemEnable [0/1]
Default is 1 (on).

variable: movement_verify_dump_log 
type: int
current: 0
help: 

variable: mfx_ParticleImpactThresh 
type: float
current: 2
help: Impact threshold for particle effects. Default: 2.0

variable: um_plane_shadow_ratio 
type: float
current: 1
help: plane shadow size ratio

variable: e_particles_lights_view_dist_ratio 
type: float
current: 128
help: Set particles lights view distance ratio

variable: ai_ProtoRODLogScale DUMPTODISK
type: int
current: 0
help: Proto

variable: r_rainOcclAdditionalSize 
type: float
current: 100
help: 

variable: e_shadows_cast_view_dist_ratio_character 
type: float
current: 0.04
help: View dist ratio for shadow maps for character

variable: ai_AmbientFireQuota DUMPTODISK
type: int
current: 2
help: Number of units allowed to hit the player at a time.

variable: g_showUpdateState 
type: int
current: 0
help: Show the game object update state of any activated entities; 3: actor objects only

variable: e_cbuffer_terrain_shift_near 
type: int
current: 3
help: terrain cbuffer dv size

variable: r_meshUseSummedArea 
type: int
current: 0
help: 

variable: e_VoxTerOnTheFlyIntegration 
type: int
current: 0
help: Debug

variable: ca_stream_facial 
type: int
current: 1
help: [0,1] turn on/off facial streaming

variable: r_ShaderEmailTags 
type: string
current: Build Version: 10.0.2.9
help: Adds optional tags to shader error emails e.g. own name or build run
Usage: r_ShaderEmailTags "some set of tags or text" 
Default is build version 

variable: e_cbuffer_lights_debug_side 
type: int
current: -1
help: Debug

variable: cg_sync_delay 
type: int
current: 300
help: movement sync delay(ms)

variable: e_particles_decals 
type: int
current: 1
help: Allows to create decal particle

variable: sys_affinity_physics 
type: int
current: 255
help: Specifies the thread affinity physics will run on. can be auto detected while startup

variable: e_StreamCgfMaxTasksInProgress 
type: int
current: 32
help: Maximum number of files simultaneously requested from streaming system

variable: profile_disk_budget 
type: int
current: -1
help: Set the budget in KB for the current time frame
The default value is -1 (disabled)
Usage: profile_disk_budget [val]

variable: ca_CachingModelFiles DUMPTODISK
type: int
current: 1
help: Caching Model files

variable: g_unit_collide_report_interval 
type: int
current: 500
help: msec

variable: quest_target_cam_move 
type: int
current: 1
help: quest target cam move

variable: user_music_disable_self 
type: int
current: 0
help: disable others user music. default is 0.

variable: r_OceanTexUpdate 
type: int
current: 1
help: 

variable: i_xinput_poll_time 
type: int
current: 1000
help: Number of ms between device polls in polling thread
Usage: i_xinput_poll_time 500
Default is 1000ms. Value must be >=0.

variable: option_map_given_quest_distance 
type: float
current: 1
help: quest notify distance in map

variable: e_detail_materials_highlight 
type: string
current: 
help: Show terrain detail layer

variable: UseQuestDirectingCloseUpCamera 
type: int
current: 1
help: quest camera use option

variable: r_ShadersBlackListGL 
type: string
current: 
help: 

variable: r_ShadersBlackListRT 
type: string
current: 
help: 

variable: ca_disableAnimBones 
type: int
current: 0
help: disable anim bones optimization

variable: e_VoxTerHeightmapEditing 
type: int
current: 0
help: Debug

variable: cloth_stiffness 
type: float
current: 0
help: stiffness for stretching

variable: p_splash_force0 
type: float
current: 10
help: Minimum water hit force to generate splash events at p_splash_dist0

variable: p_splash_force1 
type: float
current: 100
help: Minimum water hit force to generate splash events at p_splash_dist1

variable: ca_LodDistRatio 
type: float
current: 0.5
help: 

variable: pl_fall_debug 
type: int
current: 0
help: debug fall damage info.

variable: cg_debug_draw 
type: int
current: 0
help: show gimmicks

variable: e_cbuffer_occluders_view_dist_ratio 
type: float
current: 1
help: Debug

variable: ag_debugErrors 
type: int
current: 0
help: Displays debug error info on the entities (0/1)

variable: e_vegetation_sprites_distance_custom_ratio_min 
type: float
current: 0.01
help: Clamps SpriteDistRatio setting in vegetation properties

variable: e_screenshot_save_path 
type: string
current: 
help: Set output image file path

variable: sys_budget_dp_vegetation 
type: float
current: 500
help: 

variable: ss_auto_cell_loading RESTRICTEDMODE
type: int
current: 1
help: 

variable: sv_DedicatedCPUVariance 
type: float
current: 10
help: Sets how much the CPU can vary from sv_DedicateCPU (up or down) without adjusting the framerate.
Usage: sv_DedicatedCPUVariance [5..50]
Default is 10.

variable: ai_Locate DUMPTODISK
type: string
current: none
help: 


variable: d3d9_ResetDeviceAfterLoading 
type: int
current: 0
help: 

variable: e_visarea_include_radius 
type: float
current: 0
help: visarea include radius

variable: r_StereoHudScreenDist DUMPTODISK
type: float
current: 0.5
help: Distance to plane where hud stereo parallax converges to zero.
If not zero, HUD needs to be rendered two times.

variable: ca_SkeletonEffectsMaxCount 
type: int
current: 100
help: Set Max Count of skeleton effects

variable: e_statobj_use_lod_ready_cache 
type: int
current: 1
help: 

variable: e_selected_color_b 
type: int
current: 0
help: [0, 255] Development purpose

variable: e_selected_color_g 
type: int
current: 0
help: [0, 255] Development purpose

variable: e_selected_color_r 
type: int
current: 0
help: [0, 255] Development purpose

variable: p_fixed_timestep 
type: float
current: 0
help: Toggles fixed time step mode.Usage: p_fixed_timestep [0/1]
Forces fixed time step when set to 1. When set to 0, the
time step is variable, based on the frame rate.

variable: e_portals_big_entities_fix 
type: int
current: 1
help: Enables special processing of big entities like vehicles intersecting portals

variable: cg_hide 
type: int
current: 0
help: hide client gimmick

variable: r_EnvCMupdateInterval DUMPTODISK
type: float
current: 0.04
help: Sets the interval between environmental cube map texture updates.
Usage: r_EnvCMupdateInterval #
Default is 0.1.

variable: profile_sampler_max_samples 
type: float
current: 2000
help: Number of samples to collect for sampling profiler

variable: fg_inspectorLog 
type: int
current: 0
help: Log inspector on console.

variable: e_particles_filter 
type: string
current: 
help: filter particles by name

variable: e_shadows_omni_min_texture_size 
type: int
current: 256
help: Set minimum resolution of shadow map for omni
256(faster), 512(medium), 1024(better quality)

variable: draw_wind_area 
type: int
current: 0
help: drawing wind area

variable: net_vehicle_controller_debug 
type: int
current: 0
help: <unit id>

variable: specialty_debug 
type: int
current: 0
help: show debug information of specialty

variable: r_VegetationSpritesGenAlways 
type: int
current: 0
help: 

variable: ca_mirror_test 
type: int
current: -1
help: 

variable: ShowPlayerFrameLifeAlertEffect 
type: int
current: 1
help: show lift alert effect in player frame

variable: camera_min_pitch 
type: float
current: -88
help: 

variable: s_DumpEventStructure 
type: int
current: 0
help: Toggles to save a file of event structure.
Default is 0 (off).
1: dumps event structure to eventstructure.txt.
Usage: s_DumpEventStructure [0/1].

variable: auth_serversvc DUMPTODISK
type: int
current: 0
help: AuthServer service

variable: e_phys_bullet_coll_dist 
type: float
current: 75
help: Max distance for bullet rendermesh checks

variable: ca_DeathBlendTime 
type: float
current: 0.3
help: Specifies the blending time between low-detail dead body skeleton and current skeleton

variable: r_ShadersLogCacheMisses 
type: int
current: 0
help: Log all shader caches misses on HD (both level and global shader cache misses).

variable: movement_verify_move_speed_enable 
type: int
current: 1
help: 

variable: sys_StreamCallbackTimeBudget 
type: int
current: 5000
help: Time budget, in microseconds, to be spent every frame in StreamEngine callbacks.
Additive with cap: if more time is spent, the next frame gets less budget, and
there's never more than this value per frame.

variable: pl_debug_jumping 
type: int
current: 0
help: 

variable: movement_verify_move_speed_report_error_rate 
type: float
current: 0.3
help: 

variable: ai_SOMSpeedCombat SAVEGAME
type: float
current: 4.5
help: Multiplier for the speed of increase of the Stealth-O-Meter after the AI has seen the enemy.
Usage: ai_SOMSpeedCombat 4.5
Default is 4.5. A lower value causes the AI to react to the enemy
to more slowly during combat.

variable: ai_DrawReadibilities DUMPTODISK
type: int
current: 0
help: Draws all the currently active readibilities of the AI agents.
Usage: ai_DrawReadibilities [0/1]
Default is 0 (off). Set to 1 to draw the AI readibilities.

variable: pl_fallDamage_SpeedFatal 
type: float
current: 63.25
help: Fatal fall speed in armor mode (13.5 m/s after falling freely for ca 20m).

variable: bot_profiler_type 
type: string
current: BotGridDataManager
help: 'BotGridDataManager(default)', 'BotVariableGridDataManager'

variable: ca_lipsync_vertex_drag 
type: float
current: 1.2
help: Vertex drag coefficient when blending morph targets

variable: ai_DebugInterestSystem DUMPTODISK
type: int
current: 0
help: Display debugging information on interest system

variable: r_geforce7 DUMPTODISK, RESTRICTEDMODE
type: int
current: 0
help: 

variable: given_quest_distance_display_mode 
type: int
current: 1
help: given quest display mode

variable: sys_budget_tris_terrain_detail_3d 
type: float
current: 20
help: 

variable: s_MusicSpeakerLFEVolume DUMPTODISK
type: float
current: 0.5
help: Sets the volume of the LFE speaker.
Usage: s_MusicSpeakerLFEVolume 0.2Default is 0.5.

variable: ai_BigBrushCheckLimitSize DUMPTODISK
type: float
current: 15
help: to be used for finding big objects not enclosed into forbidden areas

variable: option_skill_alert_position 
type: int
current: 1
help: option_skill_alert_position

variable: sys_background_task_budget 
type: float
current: 0
help: budget time to be used by background thread, multiplied by main frame time. 0 means infinite budget.

variable: ac_enableProceduralLeaning 
type: float
current: 0.4
help: Enable procedural leaning (disabled asset leaning and curving slowdown).

variable: r_ThermalVision 
type: int
current: 1
help: Toggles thermal vision enabling.
Usage: r_ThermalVision [0/1]
Default is 1 (on). Set to 2 to enable debug mode (force enabling). Set to 0 to completely disable termal vision modes.

variable: e_vegetation_sprite_max_pixel 
type: float
current: 1.5
help: Set Max Screen Pixel size of sprite. over-sized sprite will be drawn by 3d model

variable: r_DisplacementFactor 
type: float
current: 0.4
help: Global displacement amount.
Default is 0.4f.

variable: es_log_collisions 
type: int
current: 0
help: Enables collision events logging

variable: r_StencilFlushShaderReset REQUIRE_APP_RESTART
type: int
current: 0
help: When set to 1, resets the stencil parameters after every call to FX_FlushShader_General. Intended for debugging problems with illum-pass stencil.

variable: r_ExcludeShader 
type: string
current: 0
help: Exclude the named shader from the render list.
Usage: r_ExcludeShader ShaderName
Sometimes this is useful when debugging.

variable: profile_disk_max_items 
type: int
current: 10000
help: Set maximum number of IO statistics items to collect
The default value is 10000
Usage: profile_disk_max_items [num]

variable: e_cbuffer_version 
type: int
current: 2
help: 1 Vladimir's, 2MichaelK's

variable: g_ignore_trade_invite 
type: int
current: 0
help: 0(accept trade invite), 1(ignore trade invite)

variable: ai_ProtoRODSpeedMod DUMPTODISK
type: int
current: 1
help: Proto

variable: cp_zone_picking 
type: int
current: 0
help: 

variable: ca_log_unknown_bone_list 
type: int
current: 0
help: 

variable: e_StreamCgfDebugMinObjSize 
type: int
current: 100
help: Threshold for objects debugging in KB

variable: r_ShowRenderTarget_FullScreen 
type: int
current: 0
help: 

variable: r_CustomResMaxSize 
type: int
current: 4096
help: Maximum resolution of custom resolution rendering

variable: ag_measureActualSpeeds 
type: int
current: 0
help: Measure actual travel speeds of entity and animation origins

variable: e_shadows_omni_max_texture_size 
type: int
current: 512
help: Set maximum resolution of shadow map for omni
256(faster), 512(medium), 1024(better quality)

variable: e_cbuffer 
type: int
current: 1
help: Activates usage of software coverage buffer. 0 - zone server, 1 - camera culling only; 2 - camera culling and light-to-object check

variable: ca_LodClampThreshold 
type: int
current: 7
help: 

variable: e_gsm_scatter_lod_dist 
type: float
current: 70
help: Size of Scattering LOD GSM in meters

variable: q_ShaderVegetation REQUIRE_APP_RESTART
type: int
current: 3
help: Defines the shader quality of Vegetation
Usage: q_ShaderVegetation 0=low/1=med/2=high/3=very high (default)

variable: e_decals_deffered_static 
type: int
current: 0
help: 1 - switch all non-planar decals placed by level designer to deferred

variable: r_NightVisionSonarRadius 
type: float
current: 32
help: Set nightvision sonar hints radius.


variable: r_SSGIAmount 
type: float
current: 1
help: SSGI effect multiplier

variable: e_GISecondaryOcclusion 
type: int
current: 0
help: Enable/disable secondary occlusion for global illumination. Default: 0 - disabled

variable: sys_DeactivateConsole 
type: int
current: 0
help: 0: normal console behavior
1: hide the console

variable: log_FileKeepOpen 
type: int
current: 0
help: keep log file open to reduce open time

variable: r_TexturesStreamSystemPoolSize 
type: int
current: 1024
help: (null)

variable: vehicle_controller_debug 
type: int
current: 0
help: 2 : no collision check

variable: r_HDRBrightness DUMPTODISK
type: float
current: 1
help: HDR brightness
Usage: r_HDRBrightness [Value]
Default is 1.0

variable: ca_DrawAimIKVEGrid 
type: int
current: 0
help: if set to 1, we will the the grid with the virtual examples

variable: e_character_light_offset_x 
type: float
current: 0
help: x offset character light source(in camera space)

variable: e_character_light_offset_y 
type: float
current: -0.5
help: y offset character light source(in camera space)

variable: e_character_light_offset_z 
type: float
current: 1.5
help: z offset character light source(in world space)

variable: e_decals_force_deferred 
type: int
current: 0
help: 1 - force to convert all decals to use deferred ones

variable: ai_ProtoRODSilhuette DUMPTODISK
type: int
current: 0
help: Proto

variable: use_data_mining_manager 
type: int
current: 1
help: 

variable: g_customizer_enable_cutscene 
type: int
current: 1
help: enable customizer in cutscene

variable: ai_DrawSmartObjects DUMPTODISK
type: int
current: 0
help: Draws smart object debug information.
Usage: ai_DrawSmartObjects [0/1]
Default is 0 (off). Set to 1 to draw the smart objects.

variable: ai_DebugDrawBannedNavsos 
type: int
current: 0
help: Toggles drawing banned navsos [default 0 is off]


variable: e_occlusion_volumes 
type: int
current: 1
help: Enable occlusion volumes(antiportals)

variable: ca_UnloadAnim 
type: int
current: 1
help: unload animations when not use.

variable: movement_verify_speed_error_rate 
type: float
current: 3
help: 

variable: r_SoftAlphaTest 
type: int
current: 1
help: Toggles post processed soft alpha test for shaders supporting this
Usage: r_SoftAlphaTest [0/1]
Default is 1 (enabled)


variable: ca_DrawDecalsBBoxes 
type: int
current: 0
help: if set to 1, the decals bboxes are drawn

variable: r_waitRenderThreadAtDeviceLost 
type: int
current: 1
help: 

variable: r_GeominstancingDebug 
type: int
current: 0
help: Toggles HW geometry instancing Debug.
Usage: r_GeomInstancing [0/1/2]


variable: e_screenshot 
type: int
current: 0
help: Make screenshot combined up of multiple rendered frames
(negative values for multiple frames, positive for a a single frame)
 1 highres
 2 360 degree panorama
 3 Map top-down view

see:
  e_screenshot_width, e_screenshot_height, e_screenshot_quality, e_screenshot_map_center_x,
  e_screenshot_map_center_y, e_screenshot_map_size, e_screenshots_min_slices, e_screenshot_debug

variable: login_fast_start DUMPTODISK
type: int
current: 0
help: start to login page (default : 0)

variable: invisible_debug 
type: int
current: 0
help: show invisible status

variable: ag_log_entity 
type: string
current: 
help: Log only this entity

variable: ca_MeshMergeMode 
type: int
current: 16
help: RenderMesh Merge Mode

variable: ai_ProtoRODReactionTime DUMPTODISK
type: float
current: 2
help: Proto

variable: p_characterik 
type: int
current: 1
help: Toggles character IK.
Usage: p_characterik [0/1]
Default is 1 (on). Set to 0 to disable inverse kinematics.

variable: r_shootingstar_width 
type: float
current: 0.005
help: Width of the shooting star.

variable: sys_budget_tris_road 
type: float
current: 20
help: 

variable: bot_use_automatic_startup 
type: int
current: 0
help: automatic startup

variable: s_BlockAlignSize 
type: int
current: -1
help: Internal minimum file block alignment in bytes.
Audio will read data in at least chunks of this size.
Usage: s_BlockAlignSize [0/...]
Default PC: -1, PS3: 16384, XBox360: -1
-1 is a FMOD default and results in 2048 bytes.


variable: s_SpeakerConfig DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 0
help: Sets up the preferred speaker configuration.
Usage: s_SpeakerConfig #
where # is a number between 0 and 9 representing
 0: AutoDetect
	1: Mono
	2: Stereo
	4: Quad
	5: Surround
	6: 5Point1
	8: 7Point1
	9: Prologic
Default is 0 (AutoDetect).

variable: intro_zone_id 
type: int
current: -1
help: intro zone id for new character

variable: r_solidWireframe 
type: int
current: 0
help: 

variable: ag_showmovement 
type: int
current: 0
help: Show movement requests

variable: r_UseParticlesHalfRes 
type: int
current: 0
help: Enables rendering of particles of given blend operation that are close to the camera in half resolution.
Usage: r_UseParticlesHalfRes [0/2]

variable: r_log_stream_db_failed_file 
type: int
current: 1
help: 

variable: ai_AgentStatsDist DUMPTODISK
type: int
current: 150
help: Sets agent statistics draw distance, such as current goalpipe, command and target.
Usage: ai_AgentStatsDist [view distance]
Default is 20 meters. Works with ai_DebugDraw enabled.

variable: option_hide_enchant_broadcast 
type: int
current: 0
help: 0(show broadcast), 1(hide broadcast)

variable: es_UpdateEntities 
type: int
current: 1
help: Toggles entity updating.
Usage: es_UpdateEntities [0/1]
Default is 1 (on). Set to 0 to prevent all entities from updating.

variable: e_character_light_radius 
type: float
current: 2.3
help: character light source radius

variable: r_GlitterAmount 
type: int
current: 1024
help: Sets amount of glitter sprites.
Usage: r_GlitterAmount n (default is 1024)
Where n represents a number: eg: 256

variable: es_DisableTriggers 
type: int
current: 0
help: Disable enter/leave events for proximity and area triggers

variable: impulse_mass_min 
type: float
current: 40
help: 

variable: name_tag_icon_size_ratio 
type: float
current: 1
help: nametag icon size ratio

variable: sv_unit_collide_dameage_debug 
type: int
current: 0
help: 

variable: option_use_kr_fonts DUMPTODISK
type: int
current: 0
help: enable kr font for any lang. default is 0.

variable: e_shadows_res_scale 
type: float
current: 2.8
help: Shadows slope bias for shadowgen

variable: sys_budget_frame_time 
type: float
current: 16.6
help: 

variable: e_shadows_cast_view_dist_ratio_lights 
type: float
current: 1
help: View dist ratio for shadow maps casting for light sources

variable: r_GetScreenShot 
type: int
current: 0
help: To capture one screenshot (variable is set to 0 after capturing)
0=do not take a screenshot (default), 1=save a screenshot (together with .HDR if enabled), 2=save a screenshot

variable: r_HDRRangeAdaptationSpeed 
type: float
current: 4
help: HDR range adaption speed
Usage: r_HDRRangeAdaptationSpeed [Value]

variable: model_streaming_debug 
type: int
current: 0
help: 

variable: music_slient_duration_max 
type: int
current: 20000
help: ms

variable: music_slient_duration_min 
type: int
current: 5000
help: ms

variable: sys_console_draw_always 
type: int
current: 1
help: draw console always for debug

variable: sys_physics_cpu_auto 
type: int
current: 0
help: Auto Enable/Disable Physics Thread (zone server only)

variable: sv_timeout_disconnect 
type: int
current: 0
help: Timeout for fully disconnecting timeout connections

variable: e_StreamCgfUpdatePerNodeDistance 
type: int
current: 1
help: Use node distance as entity distance for far nodes

variable: s_SoftwareChannels DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 256
help: Sets the maximum number of software sound channels.
Default is 256.

variable: glider_hide_at_sheath 
type: int
current: 0
help: 0(show my glider when sheathed), 1(hide my glider when sheathed))

variable: e_custom_texture_share 
type: int
current: 1
help: custom texture sharing on/off

variable: quest_cam_dof_range 
type: float
current: 2.5
help: quest cam dof range

variable: e_DissolveDistMax 
type: float
current: 8
help: At most how near to object MVD dissolve effect triggers (10% of MVD, clamped to this)

variable: e_DissolveDistMin 
type: float
current: 2
help: At least how near to object MVD dissolve effect triggers (10% of MVD, clamped to this)

variable: departure_server_passport_high 
type: int
current: 0
help: departure_server_passport_high

variable: r_Reflections DUMPTODISK
type: int
current: 1
help: Toggles reflections.
Usage: r_Reflections [0/1]
Default is 1 (reflects).

variable: s_HWChannels DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 0
help: Sets the number of sound hardware channels to use./nSo even if you have 256 channels only max of them will be used.
Default is 0.

variable: e_particles_lights 
type: int
current: 1
help: Allows to have simpe light source attached to every article

variable: ignore_ui_permission 
type: int
current: 0
help: 

variable: e_DissolveDist 
type: float
current: 1.5
help: How near to object MVD dissolve effect triggers

variable: e_DissolveTime 
type: float
current: 0.4
help: How many seconds transition takes place

variable: ca_GameControlledStrafing 
type: int
current: 1
help: Use game controlled strafing/curving flag, instead of low level calculated curving weight.

variable: ac_MCMHorLocalPlayer 
type: int
current: 1
help: Overrides the horizontal movement control method specified by AG (overrides filter).

variable: r_ssdoAmount 
type: float
current: 1.2
help: Strength of the directional occlusion

variable: r_ShadersPrecacheAllLights 
type: int
current: 0
help: 

variable: s_VariationLimiter REQUIRE_APP_RESTART
type: float
current: 1
help: Sets limiter to control sound variation.
Usage: s_VariationLimiter [0..1]
Default is 1.0.

variable: ai_DrawSpawner 
type: int
current: 0
help: drawing spawner

variable: r_texturesStreamingUploadPerFrame 
type: int
current: 1
help: max upload texture count per frame. (DX9 only)

variable: log_WriteToFile DUMPTODISK
type: int
current: 1
help: toggle whether to write log to file (game.log)

variable: e_custom_dressing_time_max 
type: float
current: 0.5
help: set character customizer max dressing time threshold

variable: e_particles_receive_shadows 
type: int
current: 0
help: Enable shadow maps receiving for particles

variable: ui_game_provider 
type: int
current: 3
help: game provider for ui view(0 : real game provider, 1 : tencent, 2 : gameon, 3 : trion, 4 : mailru, 5 : playwith)

variable: s_X2CullingByMaxChannel 
type: int
current: 1
help: allow early culling by max channel.
Usage: s_CullingByX2SoundPriority [0/1]
Default is 0 (off).

variable: e_dynamic_light_max_count 
type: int
current: 128
help: Sets maximum amount of dynamic light sources

variable: ca_DecalSizeMultiplier 
type: float
current: 1
help: The multiplier for the decal sizes

variable: option_use_cloud 
type: int
current: 1
help: Console variable group to apply settings to multiple variables

option_use_cloud [0/1/x]:
 ... e_clouds = 0/1/1


variable: g_enableFriendlyFallAndPlay 
type: int
current: 0
help: Enables fall&play feedback for friendly actors.

variable: combat_msg_alpha_visibility 
type: float
current: 10
help: visibility of damage display widget

variable: ai_DrawDirectPathTest DUMPTODISK
type: int
current: 0
help: If enabled, you can see direct path test status.

variable: r_Beams 
type: int
current: 3
help: Toggles light beams.
Usage: r_Beams [0/1/2/3]
Default is 3 (optimized beams with glow support). Set to 0 to disable beams or 2 to
use fake beams. Set 1 for real beams, full resolution (slower). Set to 3 to use
optimized and with glow support beams.

variable: cl_unit_collide_dameage_debug 
type: int
current: 0
help: 

variable: custom_camera_max_dist 
type: float
current: 90
help: 

variable: ca_CachingCDFFiles DUMPTODISK
type: int
current: 1
help: Caching CDF files. 0 : disable, 1 : CDF, 2 : CDF/CHR

variable: r_Flush 
type: int
current: 0
help: 

variable: r_Gamma DUMPTODISK
type: float
current: 1
help: Adjusts the graphics card gamma correction (fast, needs hardware support, affects also HUD and desktop)
Usage: r_Gamma 1.0
1 off (default), try values like 1.6 or 2.2

variable: e_obj_tree_shadow_debug 
type: int
current: 0
help: Show shadow gen trees

variable: e_particles_middle 
type: float
current: 80
help: particle lod middle

variable: r_ShadowsStencilPrePass 
type: int
current: 1
help: 1=Use Stencil pre-pass for shadows
Usage: r_ShadowsStencilPrePass [0/1]


variable: ai_DebugDrawPlayerActions DUMPTODISK
type: int
current: 0
help: Debug draw special player actions.

variable: lua_loading_profiler 
type: int
current: 0
help: use profiler while loading ui 
0: do nothing 
1: log ui loading time 
Usage: lua_loading_profiler [0/1] 


variable: r_SSAO_amount 
type: float
current: 0.65
help: Controls how much SSAO affects ambient

variable: e_object_streaming_stats 
type: int
current: 0
help: Debug

variable: r_NVDOF 
type: int
current: 1
help: Enables / disables nvidia depth of field solution.
Usage: r_NVDOF [0/1/2]
0 is disable. 1 enables(Default). Set to 2 to enable with some constant blur distances for debugging.


variable: es_UpdateContainer 
type: int
current: 1
help: 
Usage: es_UpdateContainer [0/1]
Default is 1 (on).

variable: net_input_dump 
type: int
current: 0
help: write net_input_trace output to a file (netinput.log)

variable: r_GraphStyle 
type: int
current: 0
help: 

variable: r_Stats 
type: int
current: 0
help: Toggles render statistics.
0=disabled,
1=global render stats,
2=print shaders for selected object,
11=print info about used RT's (switches),
12=print info about used unique RT's,
13=print info about cleared RT's
Usage: r_Stats [0/1/2/3/11/12/13]

variable: r_VSync DUMPTODISK, RESTRICTEDMODE
type: int
current: 0
help: Toggles vertical sync.
Usage: r_VSync [0/1]

variable: r_Width DUMPTODISK
type: int
current: 1920
help: Sets the display width, in pixels. Default is 1024.
Usage: r_Width [800/1024/..]

variable: e_dissolve_transition_threshold 
type: float
current: 0.05
help: Controls disabling of smooth transition if camera moves too fast

variable: r_DeferredShadingLightVolumes 
type: int
current: 1
help: Toggles Light volumes for deferred shading.
Usage: r_DeferredShadingLightVolumes [0/1]
Default is 1 (enabled). 0 Disables. 

variable: net_channelstats 
type: int
current: 0
help: Display bandwidth statistics per-channel

variable: r_NVDOF_NearBlurSize 
type: float
current: 4
help: The strength of the near blur effect. From 1 to 15 (default 4). The higher the number, the more blurred things will appear in the near field.


variable: e_particles_source_filter 
type: int
current: 0
help: 

variable: ai_DrawProbableTarget DUMPTODISK
type: int
current: 0
help: Enables/Disables drawing the position of probable target.

variable: ac_predictionProbabilityOri 
type: float
current: -1
help: .

variable: ac_predictionProbabilityPos 
type: float
current: -1
help: .

variable: pl_zeroGEnableGyroFade 
type: int
current: 2
help: Enable fadeout of gyro-stabilizer for vertical view angles (2=disable speed fade as well).

variable: glider_debug 
type: int
current: 0
help: 

variable: s_FileAccess 
type: int
current: 1
help: Toggles disk access on reading files.
0:		 direct file access via CryPak
1:		 indirect file access via StreamingSystem with wait
Default is 0.

variable: um_steer_wheel_rotate_power 
type: int
current: 7
help: ship steerWheel rotate power

variable: sound_enable_quest_summary_voice 
type: int
current: 1
help: quest summary voice (enable : 1, disable : others)

variable: cu_stream_method 
type: int
current: 1
help: 0 : old, 1 : new(c_asset with xml streaming)

variable: r_ForceDiffuseSpecClear 
type: int
current: 0
help: Diffuse and Specular Color Clear

variable: e_vegetation_mem_sort_test 
type: int
current: 0
help: Debug

variable: ExitOnQuit 
type: int
current: 1
help: 

variable: e_StreamCgfDebugFilter 
type: string
current: 
help: Show only items containnig specified text

variable: e_StreamCgfDebugHeatMap 
type: int
current: 0
help: Generate and show mesh streaming heat map
 1: Generate heat map for entire level
 2: Show last heat map

variable: ai_SightRangeDarkIllumMod SAVEGAME
type: float
current: 0.5
help: Multiplier for sightrange when the target is in dark light condition.

variable: MemInfo 
type: int
current: 0
help: Display memory information by modules

variable: ac_debugMotionParams 
type: int
current: 0
help: Display graph of motion parameters.

variable: r_CBStaticDebug 
type: int
current: 0
help: Toggles debugging of per-instance CBs.
Usage: r_UseCBStaticDebug [0/1]
Default is 0 (off). Set to 1 to enable asserts when static CB content is differ from the actual instance content.

variable: r_VegetationSpritesMaxUpdate 
type: int
current: 10
help: 

variable: r_TexturesStreamAdaptiveMargin 
type: float
current: 0.1
help: percentage of pool size that adaptive mip ratio affects

variable: g_breakImpulseScale REQUIRE_LEVEL_RELOAD
type: float
current: 1
help: How big do explosions need to be to break things?

variable: p_enforce_contacts 
type: int
current: 1
help: This variable is obsolete.

variable: v_dumpFriction 
type: int
current: 0
help: Dump vehicle friction status

variable: e_joint_strength_scale 
type: float
current: 1
help: Scales the strength of prebroken objects' joints (for tweaking)

variable: prefab_use_mmf 
type: int
current: 0
help: 0: off, 1: on

variable: option_enable_combat_chat_log DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 0
help: enable combat chat log. default is 0.

variable: g_tree_cut_reuse_dist 
type: float
current: 0
help: Maximum distance from a previously made cut that allows reusing

variable: r_TexturesStreamSystemLimitCheckTime 
type: float
current: 3
help: 

variable: es_VisCheckForUpdate 
type: int
current: 1
help: 
Usage: es_VisCheckForUpdate [0/1]
Default is 1 (on).

variable: p_max_plane_contacts_distress 
type: int
current: 4
help: Same as p_max_plane_contacts, but is effective if total number of contacts is above p_max_contacts

variable: name_tag_hp_width 
type: float
current: 70
help: nametag hp bar width

variable: r_ShowTimeGraph 
type: int
current: 0
help: Configures graphic display of frame-times.
Usage: r_ShowTimeGraph [0/1/2]
	1: Graph displayed as points.	2: Graph displayed as lines.Default is 0 (off).

variable: r_StereoEyeDist DUMPTODISK
type: float
current: 0.02
help: Maximum separation between stereo images in percentage of the screen.

variable: bot_world_id 
type: int
current: 0
help: bot world id

variable: sys_dll_game 
type: string
current: x2game-dev_dedicate.dll
help: Specifies the game DLL to load

variable: net_actor_controller_debug 
type: int
current: 0
help: 

variable: net_actor_controller_delay 
type: int
current: 300
help: ms

variable: r_HDRRangeAdaptLBufferMax DUMPTODISK
type: float
current: 0.125
help: Set range adaptation max adaptation for light buffers (improve precision - minimize banding) 
Usage: r_HDRRangeAdaptLBufferMax [Value]
Default is 0.25f

variable: r_RainLayersPerFrame 
type: int
current: 2
help: Number of rain layers to render per frame

variable: sys_budget_particle_etc 
type: float
current: 100
help: 

variable: sys_budget_particle_mfx 
type: float
current: 100
help: 

variable: ca_CharEditModel 
type: string
current: objects/Characters/nuian/male/nude/nu_m_base.cdf
help: 

variable: e_terrain_deformations_obstruct_object_size_ratio 
type: float
current: 1
help: 

variable: r_texturesstreamingResidencyEnabled 
type: int
current: 1
help: Toggle for resident textures streaming support.
Usage: r_TexturesStreamingResidencyEnabled [toggle]Default is 0, 1 for enabled

variable: e_vegetation_disable_bending_distance 
type: float
current: 70
help: Disable vegetation bending depending on the distance

variable: cl_unit_collide_effect_interval 
type: int
current: 500
help: msec

variable: r_BufferUpload_WriteMode 
type: int
current: 0
help: Set the mode for uploading data to buffers. 0 == UpdateSubresource, 1 == Map

variable: r_MeshPoolSize 
type: int
current: 0
help: The size of the pool for render data in kilobytes. Disabled by default on PC (mesh data allocated on heap).Enabled by default PS3. Requires app restart to change.

variable: e_particles_object_collisions 
type: int
current: 1
help: Enable particle/object collisions for SimpleCollision

variable: e_modelview_Prefab_light_offset_x 
type: float
current: 0
help: x modelview Prefab light source(in world space)

variable: e_modelview_Prefab_light_offset_y 
type: float
current: 0
help: y modelview Prefab light source(in world space)

variable: e_modelview_Prefab_light_offset_z 
type: float
current: 0
help: z modelview Prefab light source(in world space)

variable: ca_gc_check_count 
type: int
current: 2
help: 

variable: ca_AllowMultipleEffectsOfSameName 
type: int
current: 0
help: Allow a skeleton animation to spawn more than one instance of an effect with the same name on the same instance.

variable: name_tag_custom_gauge_size_ratio 
type: float
current: 1
help: coustom gauge name tag size ratio

variable: um_stream_prefab_switch 
type: int
current: 1
help: 

variable: swim_dead_anim_debug 
type: int
current: 0
help: 

variable: e_particles_dynamic_particle_count 
type: int
current: 0
help: change particle count in runtime

variable: r_TexturesStreamingDebugDumpIntoLog 
type: int
current: 0
help: Dump content of current texture streaming debug screen into log

variable: ca_DrawBaseMesh 
type: int
current: 1
help: if this is 0, will not draw the characters

variable: net_defaultChannelPacketRateToleranceLow READONLY
type: float
current: 0.1
help: 

variable: e_material_loading_profile 
type: int
current: 0
help: Debug

variable: e_particles_trail_min_seg_size 
type: float
current: 0.2
help: Trail effect spline segment size

variable: auto_enemy_targeting 
type: int
current: 0
help: auto targeting for attacking skill

variable: movement_verify_sample_max 
type: int
current: 200
help: 

variable: camera_damping_use_physics_speed 
type: int
current: 1
help: 

variable: ca_DebugAnimMemTracking DUMPTODISK
type: int
current: 0
help: if this is 1, then its shows the anim-key allocations

variable: r_texturesstreamingResidencyTime 
type: float
current: 10
help: Time to keep textures resident for before allowing them to be removed from memory.
Usage: r_TexturesStreamingResidencyTime [Time]
Default is 10 seconds

variable: r_WaterReflectionsMinVisUpdateFactorMul DUMPTODISK
type: float
current: 20
help: Activates update factor multiplier when water mostly occluded.


variable: e_Tessellation 
type: int
current: 1
help: HW geometry tessellation  0 = not allowed, 1 = allowed

variable: r_desireHeight DUMPTODISK
type: int
current: 1080
help: desire screen height.


variable: e_gsm_extra_range_shadow 
type: int
current: 1
help: Enable Extra Range Shadow

variable: g_breakagelog 
type: int
current: 0
help: Log break events

variable: e_decals_precreate 
type: int
current: 1
help: Pre-create decals at load time

variable: r_dyntexatlasvoxterrainsize 
type: int
current: 0
help: 

variable: s_ReverbDelay 
type: float
current: -1
help: Sets the current reverb's late reflection in seconds! (overrides dynamic values!)
Usage: s_ReverbDelay [0/0.1]
Default: -1
-1: Uses the value set within the reverb preset.


variable: sys_budget_tris_entity 
type: float
current: 20
help: 

variable: cp_debug_ray_world_intersection_rwi_flags 
type: int
current: 0
help: override flags

variable: auto_disconnect_timer DUMPTODISK
type: int
current: 30
help: current auto disconnect version (default : 30 min)

variable: g_walkMultiplier SAVEGAME
type: float
current: 1
help: Modify movement speed

variable: ai_AdjustPathsAroundDynamicObstacles 
type: int
current: 1
help: Set to 1/0 to enable/disable AI path adjustment around dynamic obstacles

variable: r_ShadowsGridAligned DUMPTODISK
type: int
current: 0
help: Selects algorithm to use for shadow mask generation:
0 - Disable shadows snapping
1 - Enable shadows snapping
2 - Just snap position (by a small fixed value)

variable: p_max_contact_gap_player 
type: float
current: 0.01
help: Sets the safe contact gap for player collisions with
the physical environment.Usage: p_max_contact_gap_player 0.01
This variable is used for internal tweaking only.

variable: um_ship_full_sail_speed_rate 
type: float
current: 0.5
help: 

variable: e_cgf_verify 
type: int
current: 0
help: Debug

variable: r_WaterReflectionsMinVisUpdateDistanceMul DUMPTODISK
type: float
current: 10
help: Activates update distance multiplier when water mostly occluded.


variable: e_cbuffer_terrain_distance_near 
type: float
current: 50
help: Only near sectors are rasterized

variable: r_TexGrid 
type: int
current: 0
help: 

variable: name_tag_font_size_on_bgmode 
type: int
current: 17
help: set unit name tag font size on bg mode

variable: profile_disk_timeframe 
type: float
current: 5
help: Set maximum keeping time for collected IO statistics items in seconds
The default value is 5 sec
Usage: profile_disk_timeframe [sec]

variable: bot_scan_area_filter 
type: string
current: 
help: filter (default : "")

variable: r_NVDOF_BokehLuminance 
type: float
current: 0.85
help: The minimum luminance value at which we start to see bokeh effects. Should be between 0 and 1 (default .85).


variable: net_defaultChannelPacketRateToleranceHigh READONLY
type: float
current: 2
help: 

variable: r_BeamsDistFactor 
type: float
current: 0.05
help: Distance between slices.
Usage: r_BeamsDistFactor [fValue]
Default is 0.01 (0.01 meters between slices).

variable: pelvis_shake_knockback 
type: float
current: 1
help: 

variable: d3d9_ui_buffer_size REQUIRE_APP_RESTART
type: int
current: 2048
help: kilo bytes

variable: g_godMode 
type: int
current: 0
help: God Mode

variable: r_TexturesStreamingMipClampDVD 
type: int
current: 1
help: Clamp the texture mip level to certain value when streaming from DVD. 1 will never allow highest mips to be loaded for example.
Usage: r_TexturesStreamingMipClampDVD [0..4]
Default is 1.

variable: e_TessellationMaxDistance 
type: float
current: 30
help: Maximum distance from camera in meters to allow tessellation, also affects distance-based displacement fadeout

variable: option_weapon_effect 
type: int
current: 1
help: Console variable group to apply settings to multiple variables

option_weapon_effect [0/1/x]:
 ... e_particles_disable_equipments = 1/0/0
 ... e_use_enhanced_effect = 0/1/1
 ... e_use_gem_effect = 0/1/1


variable: over_head_marker_width 
type: float
current: 46
help: overhead marker width

variable: e_gsm_terrain_include_objects 
type: int
current: 1
help: Includes terrain shadows into last very big shadow frustum

variable: dt_meleeTime 
type: float
current: 0.3
help: time in seconds between double taps for melee

variable: r_silhouetteSize 
type: float
current: 1.3
help: Silhouette Size

variable: r_NightVisionSonarLifetime 
type: float
current: 2
help: Set nightvision sonar hints lifetime.


variable: e_voxel_ao_scale 
type: int
current: 4
help: Ambient occlusion amount

variable: e_ProcVegetationMaxObjectsInChunk 
type: int
current: 2048
help: Maximum number of instances per chunk

variable: s_ObstructionMaxValue 
type: float
current: 0.95
help: Toggles maximum obstruction effect.
Usage: s_ObstructionMaxValue [0..1.0f]
0:		 off
1.0f: total maximum obstruction
Default is 0.85f.

variable: g_ignore_family_invite 
type: int
current: 0
help: 0(accept family invite), 1(ignore family invite)

variable: e_shadows_on_alpha_blended 
type: int
current: 1
help: Enable shadows on aplhablended 

variable: e_GICascadesRatio 
type: float
current: 2
help: Sets slope of cascades for global illumination. Default: 2.f

variable: e_GsmViewSpace 
type: int
current: 0
help: 0=world axis aligned GSM layout, 1=Rotate GSM frustums depending on view camera

variable: ca_LoadHeaders 
type: int
current: 1
help: Enable loading animation headers from DBH

variable: p_prohibit_unprojection 
type: int
current: 1
help: Prohibit Unprojection and velocity penalties upon Unprojection

variable: fly_stance_enable DUMPTODISK
type: int
current: 1
help: Enable/Disable FLY stance

variable: e_water_tesselation_swath_width 
type: int
current: 10
help: Set the swath width for the boustrophedonic mesh stripping

variable: net_defaultChannelBitRateToleranceHigh READONLY
type: float
current: 0.001
help: 

variable: show_dof_value 
type: int
current: 1
help: [0,1] off, on

variable: e_particles_stream 
type: int
current: 1
help: Activates streaming of particles

variable: pl_zeroGSpeedModeEnergyConsumption 
type: float
current: 0.5
help: Percentage consumed per second while speed sprinting in ZeroG.

variable: g_debug_sync_without_physics 
type: int
current: 0
help: 0 : off, 1 : on

variable: ca_SmoothStrafe 
type: int
current: 1
help: If this is 1, then we smooth the strafe vector

variable: cd_no_spawn 
type: int
current: 0
help: 

variable: e_occlusion_culling_view_dist_ratio 
type: float
current: 0.5
help: Skip per object occlusion test for very far objects - culling on tree level will handle it

variable: e_CoarseShadowMgrDebug 
type: float
current: 0
help: Toggles coarse visibility manager debug output information
0 = Off
1 = display queries information 
2 = display queries cache information 


variable: r_UseParticlesMerging 
type: int
current: 0
help: Enables merging of particles drawcalls.
Usage: CV_r_useparticles_merge [0/1]

variable: e_character_back_light 
type: int
current: 1
help: character backlight on/off

variable: e_GIBlendRatio 
type: float
current: 0.25
help: Ratio of overlapped region between nested cascades. 0.25 means 25% overlapping. Default: 0.25 Min: .1 Max: 2

variable: sys_sleep_background 
type: int
current: 40
help: sleep while in background (ms)

variable: r_ShowLightBounds 
type: int
current: 0
help: Display light bounds - for debug purpose
Usage: r_ShowLightBounds [0=off/1=on]

variable: ai_MovementSpeedMediumIllumMod SAVEGAME
type: float
current: 0.8
help: Multiplier for movement speed when the target is in medium light condition.

variable: e_particles_thread 
type: int
current: 0
help: Enable particle threading

variable: e_debug_drawShowOnlyLod 
type: int
current: -1
help: e_DebugDraw shows only objects showing lod X

variable: hs_ignore_dominion_area RESTRICTEDMODE
type: int
current: 0
help: editor only

variable: e_GIGlossyReflections 
type: int
current: 0
help: Enable/disable reflective mode for global illumination. Default: 0 - disabled

variable: net_voice_trail_packets 
type: int
current: 5
help: 

variable: option_shadow_view_dist_ratio_character 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_shadow_view_dist_ratio_character [1/2/3/4/x]:
 ... e_shadows_cast_view_dist_ratio_character = 0.01/0.02/0.03/0.04/0.04


variable: profile_event_tolerance 
type: float
current: 0.5
help: Length of a profile section before it becomes and event (in Milliseconds).


variable: p_max_contact_gap_simple 
type: float
current: 0.03
help: Specifies the maximum contact gap for objects that use the simple solver

variable: r_DualMaterialCullingDist 
type: float
current: 50
help: Set dual material culling dist.
Default is 50.f.


variable: cp_world_picking 
type: int
current: 0
help: 

variable: cp_debug_ray_world_intersection_entity_query_flags 
type: int
current: 0
help: override objtypes

variable: e_VoxTerShadows 
type: int
current: 1
help: Debug

variable: ai_SystemUpdate 
type: int
current: 1
help: Toggles the regular AI system update.
Usage: ai_SystemUpdate [0/1]
Default is 1 (on). Set to 0 to disable ai system updating.

variable: e_detail_materials_zpass_normal_draw_dist 
type: float
current: 100
help: in zpass, detail material normal draw dist

variable: sys_no_crash_dialog 
type: int
current: 0
help: 

variable: time_scale 
type: float
current: 1
help: Game time scaled by this - for variable slow motion

variable: ai_InterestDetectMovement DUMPTODISK
type: int
current: 0
help: Enable movement detection in interest system

variable: e_modelview_Prefab_sunlight_dir_x 
type: float
current: -0.207
help: x modelview sunlight direction

variable: e_modelview_Prefab_sunlight_dir_y 
type: float
current: -0.756
help: y modelview sunlight direction

variable: e_modelview_Prefab_sunlight_dir_z 
type: float
current: 0.621
help: z modelview sunlight direction

variable: e_decals_merge 
type: int
current: 1
help: Combine pieces of decals into one render call

variable: sound_others_material_effect_sound_volume 
type: float
current: 0.5
help: others material effect sound volume. [0.0 - 1.0]

variable: ca_LodSkipTaskInflectionOfRatio 
type: float
current: 100
help: 

variable: r_ShowNormals 
type: int
current: 0
help: Toggles visibility of normal vectors.
Usage: r_ShowNormals [0/1]Default is 0 (off).

variable: i_offset_up 
type: float
current: 0
help: Item position up offset

variable: pl_debug_filter 
type: string
current: 
help: 

variable: ai_DrawModifiers DUMPTODISK
type: int
current: 0
help: Toggles the AI debugging view of navigation modifiers.

variable: i_forcefeedback 
type: int
current: 1
help: Enable/Disable force feedback output.

variable: ca_DebugAnimUsageOnFileAccess 
type: int
current: 0
help: shows what animation assets are used in the level, triggered by key fileAccess events

variable: pl_curvingSlowdownSpeedScale 
type: float
current: 1
help: Player only slowdown speedscale when curving/leaning extremely.

variable: g_grabLog 
type: int
current: 0
help: verbosity for grab logging (0-2)

variable: ai_genCryOrgWaterGraph DUMPTODISK
type: int
current: 1
help: If enabled, generate water triangulation in cry's way.

variable: sound_others_combat_sound_volume 
type: float
current: 0.5
help: target != player and source != player. [0.0 - 1.0]

variable: cl_web_upload_reserved_screenshot_file_name 
type: string
current: 
help: recent screenshot file name

variable: e_water_ocean_soft_particles 
type: int
current: 1
help: Enables ocean soft particles

variable: blink_debug 
type: int
current: 0
help: show the path for blink

variable: option_view_dist_ratio 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_view_dist_ratio [1/2/3/4/x]:
 ... ca_useDecals = 0/0/0/1/1
 ... cd_cattle_update_distance = 20/32/40/64/64
 ... cd_furniture_update_distance = 20/32/40/64/64
 ... e_cbuffer_resolution = 128/128/256/256/256
 ... e_decals_allow_game_decals = 0/1/1/1/1
 ... e_lod_min = 0/0/0/0/0
 ... e_lod_ratio = 1/3/4.5/6/6
 ... e_lods = 1/1/1/1/1
 ... e_max_view_dst_spec_lerp = 0/0.5/1/1/1
 ... e_obj_quality = 1/2/3/4/4
 ... e_stream_cgf = 1/1/1/1/1
 ... e_view_dist_ratio = 30/30/40/60/60
 ... e_view_dist_ratio_detail = 15/19/24/30/30
 ... es_DebrisLifetimeScale = 0.3/0.6/0.8/1/1


variable: sys_min_step 
type: float
current: 0.01
help: Specifies the minimum physics step in a separate thread

variable: r_MeshVolatilePoolSize 
type: int
current: 0
help: The size of the pool for volatile render data in kilobytes. Disabled by default on PC (mesh data allocated on heap).Enabled by default PS3. Requires app restart to change.

variable: ag_physErrorInnerRadiusFactor DUMPTODISK
type: float
current: 0.05
help: 

variable: click_to_move 
type: int
current: 0
help: move with mouse click (0 : off, 1 : on)

variable: ag_action 
type: string
current: 
help: Force this action

variable: camera_smooth_fadeout_mate 
type: float
current: 0.1
help: 

variable: cl_headBobLimit 
type: float
current: 0.06
help: head bobbing distance limit

variable: aux_phys_active_all 
type: int
current: 0
help: 0 : activate by lod
1 : active all
2 : deactive all

variable: ac_frametime 
type: int
current: 0
help: Display a graph of the frametime.

variable: sys_budget_system_memory_mesh 
type: float
current: 64
help: 

variable: decoration_smart_positioning_loop_count 
type: int
current: 10
help: (null)

variable: s_GameMasterVolume DUMPTODISK
type: float
current: 0.200001
help: Allows for setting the application's master volume.
Usage: s_GameMasterVolume [0...1]
Default is 1 (full volume).


variable: ca_LoadDBH 
type: int
current: 0
help: Enable loading animations from DBH

variable: pl_zeroGThrusterResponsiveness 
type: float
current: 0.3
help: Thrusting responsiveness.

variable: ag_logDrawnActors 
type: int
current: 0
help: log all drawn actors

variable: ca_LodDist 
type: float
current: 0
help: 

variable: ca_SameSkeletonEffectsMaxCount 
type: int
current: 15
help: Set Max Count of same skeleton effects

variable: sys_budget_system_memory 
type: float
current: 1024
help: 

variable: r_deferredDecalsMSAA 
type: int
current: 1
help: Enables MSAA for deferred decals. Decals will still work in MSAA modes when this is off, but will create wierd outlines around things sometimes. Default is 0 (off).


variable: glider_start_with_double_jump 
type: int
current: 1
help: 

variable: overhead_marker_fixed_size 
type: int
current: 1
help: render over head marker with fixed size

variable: ai_DynamicWaypointUpdateTime 
type: float
current: 0.0005
help: How long (max) to spend updating dynamic waypoint regions per AI update (in sec)
0 disables dynamic updates. 0.0005 is a sensible value


variable: ac_targetcorrectiontimescale 
type: float
current: 4
help: .

variable: var_aggro_meter 
type: int
current: 0
help: 0 : off, 1 : on

variable: r_OceanLodDist 
type: int
current: 100
help: 

variable: ca_DebugFacialEyes 
type: int
current: 0
help: Debug facial eyes info

variable: ai_DrawPatterns DUMPTODISK
type: int
current: 0
help: Draws all the currently active track patterns of the AI agents.
Usage: ai_DrawPatterns [0/1]
Default is 0 (off). Set to 1 to draw the AI track patterns.

variable: r_MeasureOverdraw 
type: int
current: 0
help: 0=off, 1=activate special rendering mode that visualize the rendering cost per pixel by colour
Usage: r_MeasureOverdraw [0/1]

variable: e_no_lod_chr_tris 
type: float
current: 1000
help: unit of check a chr lod

variable: effect_max_same_item_per_source 
type: int
current: 50
help: 

variable: sv_bandwidth 
type: int
current: 50000
help: Bit rate on server

variable: r_particles_lights_no_merge_size 
type: float
current: 10
help: particle light no merge range

variable: e_particles_preload 
type: int
current: 0
help: Enable preloading of all particle effects at the begining

variable: prefab_cache_xml 
type: int
current: 2
help: 0: don't cache, 1: precache all, 2: unit & doodad only, 3: unit only

variable: r_NVSSAO_OnlyOccludeAmbient 
type: int
current: 2
help: Changes the way SSAO interacts with ambient light [0/1]
0 - NVSSAO occludes both ambient/indirect lighting and direct light from the sun
1 - NVSSAO only occludes ambient/indirect lighting. Direct light from the sun is unaffected.
2 - NVSSAO occludes both ambient/indirect lighting and direct light from the sun, but specular is unaffected and grass objects are unaffected.

variable: option_view_distance 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_view_distance [1/2/3/4/x]:
 ... e_StreamCgfPoolSize = 80/100/120/150/150
 ... e_max_view_dst = 600/1000/1500/2000/2000
 ... r_FogDensityScale = 3/2/1/1/1
 ... r_FogRampScale = .3/.5/1/1/1


variable: e_modelview_Prefab_light_specualr_multy 
type: float
current: 0
help: modelview Prefab light source specualr multy

variable: ai_DebugDrawDamageParts DUMPTODISK
type: int
current: 0
help: Draws the damage parts of puppets and vehicles.

variable: e_VoxTerHideIntegrated 
type: int
current: 0
help: Debug

variable: cd_unmount_auto 
type: int
current: 1
help: unmount all things when interact something

variable: s_DebugMusic DUMPTODISK
type: int
current: 0
help: Changes music-debugging verbosity level.
Usage: s_DebugMusic [0/4]
Default is 0 (off). Set to 1 (up to 4) to debug music.

variable: profile_disk 
type: int
current: 1
help: Enables Disk Profiler (should be deactivated for final product)
The C++ function CryThreadSetName(threadid,"Name") needs to be called on thread creation.
0=off, 1=on screen, 2=on disk
Disk profiling may not work on all combinations of OS and CPUs
Usage: profile_disk [0/1/2]

variable: profile_peak 
type: float
current: 10
help: Profiler Peaks Tolerance in Milliseconds.


variable: r_TextureLodMaxLod 
type: int
current: 1
help: Controls dynamic LOD system for textures used in materials.
Usage: r_TextureLodMaxLod [1 or bigger]
Default is 1 (playing between lod 0 and 1). Value 0 will set full LOD to all textures used in frame

variable: p_list_active_objects 
type: int
current: 0
help: 0: off
1: list once
2: on

variable: ac_terrain_foot_align 
type: int
current: 1
help: Turn On/Off of terrain foot align(IK)

variable: s_DebugSound 
type: int
current: 0
help: Toggles sound debugging mode.
Usage: s_DebugSound [0/13]
0: Disables debugging.
1: Enables simple sound debugging.
2: Enables full sound debugging.
3: Enables sound event callback debugging.
4: Enables sound event listener debugging.
5: Enables sound syncpoint debugging.
6: Enables simple memory debugging.
7: Enables FMOD logging into fmod.log.
8: Enables simple FMOD debugging into fmod.log.
9: Enables complex FMOD debugging into fmod.log.
10: Enables FMOD memory debugging into fmod.log.
11: Enables logging of all FMOD output into fmod.log.
12: Enables AudioDevice command logging to SoundCommands.xml.
13: Enables logging of information on Voice files which have programmersounds.
Default is 0 (off).

variable: r_debugPatchwork 
type: int
current: 0
help: Enable saving character texture before/after patchwork.
target folder is ($TRUNK)/patchwork.
Usage: r_debugPatchwork 0 (default is 0)


variable: mov_loading 
type: int
current: 1
help: loading bar show option (0 = off, 1 = sequence set, 2 = on)

variable: bot_replay 
type: string
current: 
help: bot replay name

variable: ai_AttemptStraightPath 
type: int
current: 0
help: Toggles AI attempting a simple straight path when possible.
Default is 1 (on).

variable: swim_jump_end_depth 
type: float
current: 0.2
help: swim jump end depth (meter)

variable: e_time_of_day_debug 
type: int
current: 0
help: Time of Day Debug

variable: e_bboxes 
type: int
current: 0
help: Activates drawing of bounding boxes

variable: e_load_only_sub_zone_shape 
type: float
current: 0
help: cheat for research sub zone

variable: s_LanguagesConversion 
type: int
current: 1
help: Controls conversion of legacy event name to direct wav files (only for languages).
Usage: s_LanguagesConversion [0/1]
Default is 0 (off).

variable: um_show_attach_point 
type: int
current: 0
help: show unit model attach point

variable: r_ssdoRadiusMax 
type: float
current: 0.2
help: Max clamped SSDO radius

variable: r_ssdoRadiusMin 
type: float
current: 0.06
help: Min clamped SSDO radius

variable: ca_ChrBaseLOD DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 0
help: Base Lod Level for Chr CRenderMesh

variable: number_of_back_visual 
type: int
current: 1
help: 

variable: model_streaming_enable 
type: int
current: 1
help: 

variable: e_time_of_day_speed 
type: float
current: 0.0017
help: Time of Day change speed

variable: cd_indicator_time 
type: int
current: 2000
help: show indicator time

variable: ai_PathfinderUpdateTime 
type: float
current: 0.005
help: Maximum pathfinder time per AI update


variable: pl_fall_start_height 
type: float
current: 2
help: Minimum height for starting freefall signal.

variable: use_celerity_with_double_forward 
type: int
current: 1
help: 

variable: ca_PrintDesiredSpeed DUMPTODISK
type: int
current: 0
help: if this is 1, it will print the desired speed of the human characters

variable: es_activateEntity 
type: string
current: 
help: Activates an entity

variable: log_VerbosityOverridesWriteToFile DUMPTODISK
type: int
current: 0
help: when enabled, setting log_verbosity to 0 will stop all logging including writing to file

variable: r_dofMinZScale 
type: float
current: 0
help: Set dof min z out of focus strenght (good default value - 1.0f)


variable: e_skip_precache 
type: int
current: 0
help: Load fast for development (skipping precache)

variable: e_modelview_Prefab_rot_x 
type: float
current: 0
help: modelview Prefab rot x

variable: e_modelview_Prefab_rot_z 
type: float
current: 0
help: modelview Prefab rot z

variable: e_modelview_Prefab_scale 
type: float
current: 1
help: modelview Prefab scale

variable: cl_account DUMPTODISK
type: string
current: admin
help: Client account used when connecting to server

variable: e_ambient_multiplier_no_point_lights 
type: float
current: 1.5
help: Ambient colour multiplier when point light sources are disabled

variable: r_CustomResHeight 
type: int
current: 0
help: Height of custom resolution rendering

variable: e_sun_clipplane_range 
type: float
current: 875
help: Max range for sun shadowmap frustum

variable: r_SSGIRadius 
type: float
current: 0.1
help: SSGI kernel radius

variable: r_ColorGrading 
type: int
current: 1
help: Enables color grading.
Usage: r_ColorGrading [0/1]


variable: ai_WarningsErrorsLimitInGame DUMPTODISK
type: int
current: 20
help: Caution: There's no limit in Editor.  No limit = 0, limit by n = n

variable: r_ShadersAddListRT 
type: string
current: 
help: 

variable: ag_debugLayer 
type: int
current: 0
help: Animation graph layer to display debug information for

variable: ag_debugMusic 
type: int
current: 0
help: Debug the music graph

variable: s_DialogVolume DUMPTODISK
type: float
current: 1
help: Sets the volume of all dialog sounds.
Usage: s_DialogVolume 0.5
Default is 1, which is full volume.

variable: name_tag_large_app_stamp_size_ratio 
type: float
current: 1
help: large stamp app name tag size ratio

variable: cg_trace_spawn 
type: int
current: 2
help: trace spawn/remove of client gimmick

variable: cd_use_mesh_to_collide_check 
type: int
current: 1
help: 

variable: p_max_LCPCG_subiters 
type: int
current: 120
help: Limits the number of LCP CG solver inner iterations (should be of the order of the number of contacts)

variable: ai_DrawGroupTactic DUMPTODISK
type: int
current: 0
help: draw group tactic: 0 = disabled, 1 = draw simple, 2 = draw complex.

variable: pelvis_shake_scale 
type: float
current: 0.9
help: 

variable: e_clouds 
type: int
current: 1
help: Enable clouds rendering

variable: net_defaultChannelBitRateToleranceLow READONLY
type: float
current: 0.5
help: 

variable: e_decals_clip 
type: int
current: 1
help: Clip decal geometry by decal bbox

variable: ai_doNotLoadNavigationData 
type: int
current: 0
help: 

variable: r_UseParticlesGlow 
type: int
current: 1
help: Enables glow particles.
Usage: CV_r_useparticles_glow [0/1]


variable: r_LogShaders 
type: int
current: 0
help: Logs shaders info to Direct3DLogShaders.txt
0: off
1: normal
2: extended

variable: ag_debug 
type: string
current: 
help: Entity to display debug information for animation graph for

variable: ag_humanBlending 
type: int
current: 0
help: Ivo's debug stuff. Don't ask!

variable: camera_debug_target_dist 
type: int
current: 0
help: Debug render camera target dist

variable: sys_use_limit_fps DUMPTODISK
type: int
current: 1
help: Enable/Disable to limit max frame per second

variable: e_terrain_lod_ratio 
type: float
current: 0.75
help: Set heightmap LOD

variable: name_tag_hp_bg_width_offset 
type: float
current: 13
help: nametag hp bg width offset

variable: ag_queue 
type: string
current: 
help: Next state to force

variable: e_decals 
type: int
current: 1
help: Activates drawing of decals (game decals and hand-placed)

variable: p_noGeomLoad 
type: int
current: 0
help: do not load or create geometry

variable: s_Profiling 
type: int
current: 0
help: Toggles profiling of some sound calls.
Usage: s_Profiling [0/1]
Default is 0 (off).

variable: es_UpdatePhysics 
type: int
current: 1
help: Toggles updating of entity physics.
Usage: es_UpdatePhysics [0/1]
Default is 1 (on). Set to 0 to prevent entity physics from updating.

variable: auth_serveraddr DUMPTODISK
type: string
current: 164.132.75.106
help: AuthServer address

variable: auth_serverport DUMPTODISK
type: int
current: 1237
help: AuthServer port

variable: cam_target 
type: string
current: $NONE$
help: Set the target entity of camera. "$NONE$" means no target. Be careful to remember that this is the name of entity(not unit)!

variable: e_AllowFP16Terrain 
type: int
current: 1
help: Set to 1 to allow 16 bit vertex format for the terrain

variable: e_ShadowsOcclusionCullingCaster 
type: int
current: 0
help: Clips the caster extrusion to the zero height.

variable: r_NightVisionFinalMul 
type: float
current: 3
help: Set nightvision final color multiplier for fine tunning.


variable: r_stars_size 
type: float
current: 1
help: Scales the size of stars in the night-time sky.

variable: pl_zeroGSpeedMultSpeed 
type: float
current: 1.7
help: Modify movement speed in zeroG, in speed mode.

variable: vpn_external_ip 
type: string
current: 
help: Set external IP(without VPN) under VPN connection

variable: g_frostDecay 
type: float
current: 0.25
help: Frost decay speed when freezing actors

variable: ca_EnableAssetTurning 
type: int
current: 1
help: asset tuning is disabled by default

variable: bot_automatic_shutdown 
type: int
current: 0
help: 0 : unuse, 1 : use

variable: ai_MaxVisRaysPerFrame 
type: int
current: 100
help: Maximum allowed visibility rays per frame - the rest are all assumed to succeed 
Usage: ai_MaxVisRaysPerFrame <number>
Default is 100. 


variable: ac_entityAnimClamp 
type: int
current: 1
help: Forces the entity movement to be limited by animation.

variable: r_ShadowsParticleNormalEffect DUMPTODISK
type: float
current: 1
help: Shadow taps on particles affected by normal and intensity (breaks lines and uniformity of shadows).
Usage: r_ShadowsParticleNormalEffect [x], 1. is default

variable: r_SonarVision 
type: int
current: 1
help: Toggles sonar vision enabling.
Usage: r_SonarVision [0/1]
Default is 1 (on). Set to 2 to enable debug mode (force enabling). Set to 0 to completely disable sonar vision modes.

variable: e_lod_ratio 
type: float
current: 6
help: LOD distance ratio for objects

variable: ship_rudder_force_min 
type: float
current: 1
help: 

variable: cl_serveraddr DUMPTODISK
type: string
current: 164.132.75.106
help: Server address

variable: cl_serverport DUMPTODISK
type: int
current: 1239
help: Server address

variable: g_quickGame_debug 
type: int
current: 0
help: QuickGame option

variable: e_vegetation_cull_test_bound_offset 
type: float
current: 0.55
help: Set vegetation cull test bound-offset. (0 ~ 1)

variable: r_stars_sharpness 
type: float
current: 3.5
help: Modifies the sharpness of stars. Use numbers greater than 5 for best results.

variable: ds_AutoReloadScripts 
type: int
current: 0
help: Automatically reload DialogScripts when jumping into GameMode from Editor

variable: ac_debugTweakTrajectoryFit 
type: int
current: 0
help: Don't apply any movement to entity and animation, but allow calculations to think they are moving normally.

variable: s_HRTF_DSP REQUIRE_APP_RESTART
type: int
current: 0
help: Toggles extra lowpass filter for enhanced HRTF.
Usage: s_HRTF_DSP [0/1]
Default is 0 (on).

variable: um_show_ship_boundingbox 
type: int
current: 0
help: show ship unit model bounding box

variable: r_NoLoadTextures 
type: int
current: 0
help: 

variable: name_tag_faction_show 
type: int
current: 1
help: name tag faction show

variable: movement_verify_target_max 
type: int
current: 100
help: 

variable: e_ambient_boost_no_point_lights_b 
type: float
current: 0.5
help: Ambient colour boost when point light sources are disabled (blue)

variable: e_ambient_boost_no_point_lights_g 
type: float
current: 0.3
help: Ambient colour boost when point light sources are disabled (green)

variable: e_ambient_boost_no_point_lights_r 
type: float
current: 0.3
help: Ambient colour boost when point light sources are disabled (red)

variable: dt_enable 
type: int
current: 0
help: suit actions activated by double-tapping

variable: cloth_mass_decay_attached_scale 
type: float
current: 100
help: 

variable: ai_ProtoRODHealthGraph DUMPTODISK
type: int
current: 0
help: Proto

variable: g_roundlimit 
type: int
current: 30
help: Maximum numbers of rounds to be played. Default is 0, 0 means no limit.

variable: v_draw_slip DUMPTODISK
type: int
current: 0
help: Draw wheel slip status

variable: e_flocks DUMPTODISK
type: int
current: 1
help: Enable Flocks (Birds/Fishes)

variable: r_ssdoRadius 
type: float
current: 0.4
help: SSDO radius

variable: p_num_bodies_large_group 
type: int
current: 100
help: Group size to be used with p_max_substeps_large_group, in bodies

variable: es_HitDeadBodies 
type: int
current: 1
help: specifies whether dead bodies are affected by bullet hits (0 or 1)

variable: ca_BodyPartAttachmentCullingRation 
type: float
current: 200
help: ration between size of attachment and distance to camera (for body part attachments)

variable: ui_draw_achievement_type 
type: int
current: 0
help: draw achievement id

variable: e_view_dist_ratio_vegetation 
type: float
current: 60
help: View distance ratio for vegetation

variable: ai_DrawTargets DUMPTODISK
type: int
current: 0
help: 

variable: movement_levitation_hack_buff_start_time 
type: int
current: 5000
help: 

variable: fg_abortOnLoadError 
type: int
current: 1
help: Abort on load error of flowgraphs
2:abort, 1:dialog, 0:log only

variable: net_enable_tfrc 
type: int
current: 1
help: 

variable: p_accuracy_LCPCG_no_improvement 
type: float
current: 0.05
help: Required LCP CG accuracy that allows to stop if there was no improvement after p_max_LCPCG_fruitless_iters

variable: r_particles_lights_merge_range 
type: float
current: 1
help: particle light merge range

variable: con_display_last_messages 
type: int
current: 0
help: 

variable: ai_serverDebugStatsTarget DUMPTODISK
type: string
current: none
help: 


variable: movement_boost_mul 
type: float
current: 0
help: 

variable: ca_DrawLinkVertices 
type: int
current: 0
help: draws the link vertices of the rendered character

variable: ag_cache_query_results 
type: int
current: 1
help: 

variable: e_dynamic_light_max_shadow_count 
type: int
current: 4
help: not implemented yet

variable: r_BeamsHelpers 
type: int
current: 0
help: Toggles light beams helpers drawing.
Usage: r_BeamsHelpers [0/1]
Default is 0 (disabled helpers). Set to 1 to enable drawing helpers.

variable: net_voice_averagebitrate 
type: int
current: 15000
help: The average bit rate for VOIP transmission
(default 15000, higher=better quality).

variable: r_SSAO_radius 
type: float
current: 1.5
help: Controls size of area tested

variable: r_StereoGammaAdjustment DUMPTODISK
type: float
current: 0.12
help: Additional adjustment to the graphics card gamma correction when Stereo is enabled.
Usage: r_StereoGammaAdjustment [offset]0: off

variable: aim_assistRestrictionTimeout 
type: float
current: 20
help: The restriction timeout on aim assistance after user uses a mouse

variable: r_ImposterRatio 
type: float
current: 1
help: Allows to scale the texture resolution of imposters (clouds)
Usage: r_ImposterRatio [1..]
Default is 1 (1:1 normal). Bigger values can help to save texture space (e.g. value 2 results in 1/3 texture memory usage)

variable: r_ImpostersDraw 
type: int
current: 1
help: Toggles imposters drawing.
Usage: r_ImpostersDraw [0/1]
Default is 1 (on). Set to 0 to disable imposters.

variable: e_custom_max_clone_model_1 
type: int
current: 50
help: max custom clone model count 1

variable: e_custom_max_clone_model_2 
type: int
current: 80
help: max custom clone model count 2

variable: e_custom_max_clone_model_3 
type: int
current: 100
help: max custom clone model count 3

variable: e_custom_max_clone_model_4 
type: int
current: 150
help: max custom clone model count 4

variable: e_custom_max_clone_model_5 
type: int
current: 200
help: max custom clone model count 5

variable: q_ShaderGeneral REQUIRE_APP_RESTART
type: int
current: 3
help: Defines the shader quality of General
Usage: q_ShaderGeneral 0=low/1=med/2=high/3=very high (default)

variable: cb_fadeout_scale 
type: float
current: 1
help: 

variable: rope_skill_controller_cut_vel 
type: float
current: 30
help: 

variable: cb_fadeout_speed 
type: float
current: 2
help: 

variable: login_camera_zoom_base_velocity 
type: float
current: 5
help: 

variable: e_debug_drawShowOnlyCompound 
type: int
current: 0
help: e_DebugDraw shows only Compound (less efficient) static meshes

variable: r_RC_AutoInvoke 
type: int
current: 0
help: Enable calling the resource compiler (rc.exe) to compile TIF file to DDS files if the date check
showes that the destination is older or does not exist.
Usage: r_RC_AutoInvoke 1 (default is 0)


variable: e_EntitySuppressionLevel 
type: int
current: 0
help: Defines the level at which entities are spawned.
Entities marked with lower level will not be spawned - 0 means no level.
Usage: e_EntitySuppressionLevel [0-infinity]
Default is 0 (off).

variable: r_TexturesStreamingMipBias 
type: float
current: -4
help: Controls how texture LOD depends from distance to the objects.
Increasing this value will reduce amount of memory required for textures.
Usage: r_TexturesStreamingMipBias [-4..0..4]
Default is 0.

variable: r_MotionBlurMaxViewDist 
type: float
current: 16
help: Sets motion blur max view distance for objects.
Usage: r_MotionBlurMaxViewDist [0...1]
Default is 16 meters

variable: e_ObjectLayersActivationPhysics 
type: int
current: 0
help: Allow game to create/free physics of objects

variable: p_players_can_break 
type: int
current: 0
help: Whether living entities are allowed to break static objects with breakable joints

variable: r_PostProcessMinimal 
type: int
current: 0
help: Enables minimal mode for post processing (just dof/postAA allowed).
Usage: r_PostProcessMinimal [0/1]
Default is 0

variable: r_EnableErrorCheck 
type: int
current: 0
help: Enable Error Check

variable: e_GsmCastFromTerrain 
type: int
current: 0
help: Add terrain node to GSM shadow

variable: sys_budget_tris_shadow 
type: float
current: 50
help: 

variable: g_ragdoll_damping_time 
type: float
current: 1
help: 0 : off, 1 : on

variable: caq_randomidle_interval 
type: float
current: 3
help: random idle interval

variable: s_Compression DUMPTODISK
type: int
current: 2
help: Toggles which decoder should be preferred: <auto>, FSB, MP2, MP3, XMA, or WAV.
0:	<auto>, PC:2, PS3:3, X360:4
1: Prefers FSB
2: Prefers MP2
3: Prefers MP3
4: Prefers XMA
5: Prefers WAV
Default is 2 (MP2)

variable: e_screenshot_map_near_plane_offset 
type: float
current: -8000
help: param for near plane offset

variable: ai_DrawagentFOV 
type: float
current: 0
help: Toggles the vision cone of the AI agent.
Usage: ai_DrawagentFOV [-1..1]
Default is 0 (off), value 1 will draw the cone all the way to
the sight range, value 0.1 will draw the cone to distance of 10%
of the sight range, etc. ai_DebugDraw must be enabled before
this tool can be used.

variable: ss_auto_origin_change RESTRICTEDMODE
type: int
current: 1
help: 

variable: r_WaterRippleResolution 
type: int
current: 256
help: 

variable: d3d9_IBPoolSize 
type: int
current: 262144
help: 

variable: name_tag_self_enable 
type: int
current: 1
help: render name tag of own unit

variable: effect_debug_filter_group 
type: int
current: 0
help: fx group id

variable: e_CoverageBufferAccurateOBBTest 
type: int
current: 0
help: Checking of OBB boxes instead of AABB or bounding rects

variable: e_vegetation_sprites 
type: int
current: 1
help: Activates drawing of sprites instead of distributed objects at far distance

variable: s_HDRFade DUMPTODISK
type: float
current: 0.3
help: Range that HDR fades sounds
Usage: g_fHDRFade [0..1.0f]Default is 0.3f

variable: cl_frozenKeyMult 
type: float
current: 0.02
help: Frozen movement keys multiplier

variable: ca_DebugFacial 
type: int
current: 0
help: Debug facial playback info

variable: p_penalty_scale 
type: float
current: 0.3
help: Scales the penalty impulse for objects that use the simple solver

variable: camera_align_sprung_base 
type: float
current: 1.5
help: 

variable: ai_SmartObjectUpdateTime 
type: float
current: 0.002
help: How long (max) to spend updating smart objects per AI update (in sec)
default value is 0.002

variable: name_tag_appellation_show 
type: int
current: 0
help: name tag appellation show

variable: r_StereoScreenDist DUMPTODISK
type: float
current: 0.25
help: Distance to plane where stereo parallax converges to zero.

variable: e_ParticlesEmitterPoolSize 
type: int
current: 6144
help: Particles pool memory size in KB for sub-emitter

variable: es_MaxPhysDist 
type: float
current: 200
help: Physical entities farther from the camera than this are forcefully deactivated

variable: e_view_dist_doodad_min 
type: float
current: 64
help: Min distance on how far doodad will be culled out

variable: con_scroll_max 
type: int
current: 300
help: 

variable: name_tag_my_mate_show 
type: int
current: 1
help: render name tag of ride mate unit

variable: sys_budget_particle_entity 
type: float
current: 200
help: 

variable: sys_TaskThread0_CPU 
type: int
current: 3
help: Specifies the physical CPU index taskthread0 will run on

variable: sys_TaskThread1_CPU 
type: int
current: 5
help: Specifies the physical CPU index taskthread1 will run on

variable: sys_affinity_render 
type: int
current: -1
help: Specifies the thread affinity renderer will run on. can be auto detected while startup

variable: sys_TaskThread2_CPU 
type: int
current: 4
help: Specifies the physical CPU index taskthread2 will run on

variable: sys_TaskThread3_CPU 
type: int
current: 3
help: Specifies the physical CPU index taskthread3 will run on

variable: e_use_gem_effect 
type: int
current: 1
help: [0,1] 0 : Hide, 2 : Show

variable: sys_TaskThread4_CPU 
type: int
current: 2
help: Specifies the physical CPU index taskthread4 will run on

variable: sys_TaskThread5_CPU 
type: int
current: 1
help: Specifies the physical CPU index taskthread5 will run on

variable: s_VUMeter 
type: string
current: 
help: Enables audio volume debug drawing for the specified category.
Usage: s_VUMeter <category name>
Default: 


variable: e_particles_min_draw_alpha 
type: float
current: 0.004
help: Alpha cutoff for rendering particles

variable: ShowMagicPointNumber 
type: int
current: 0
help: show mana value in unit frame, party frame

variable: r_ValidateDraw 
type: int
current: 0
help: 0=disabled, 1=validate each DIP (meshes consistency, shaders, declarations, etc)


variable: e_AutoPrecacheCgfMaxTasks 
type: int
current: 4
help: Maximum number of parallel streaming tasks during pre-caching

variable: r_TexNormalMapType REQUIRE_LEVEL_RELOAD
type: int
current: 1
help: 

variable: camera_tilt_start_pitch 
type: float
current: 50
help: 

variable: v_invertPitchControl DUMPTODISK
type: int
current: 0
help: Invert the pitch control for driving some vehicles, including the helicopter and the vtol

variable: p_profile 
type: int
current: 0
help: Enables group profiling of physical entities

variable: sys_cpu_usage_update_interval 
type: float
current: 5
help: 

variable: cp_debug_safe_zone 
type: int
current: 0
help: 0 : off, 1 : intersect and inside, 2 : intersect

variable: r_rainOcclViewerDist 
type: float
current: 100
help: 

variable: es_removeEntity 
type: string
current: 
help: Removes an entity

variable: item_maker_info_show_tooltip 
type: int
current: 1
help: item maker info shows tooltip

variable: rope_skill_controller_relative_waterlevel_for_change_to_flymode 
type: float
current: 1
help: 

variable: camera_free_ignore_all 
type: int
current: 0
help: Free camera ignore everything. no collision

variable: cl_check_teleport_to_unit 
type: int
current: 1
help: 

variable: g_unit_collide_process_frequency 
type: int
current: 6
help: 

variable: es_DrawRenderBBox 
type: int
current: 0
help: 

variable: quest_chat_bubble_rate 
type: int
current: 100
help: more than '1'

variable: r_ExcludeMesh 
type: string
current: 
help: Exclude or ShowOnly the named mesh from the render list.
Usage: r_ExcludeShader Name
Usage: r_ExcludeShader !Name
Sometimes this is useful when debugging.

variable: ai_InterestScalingMovement DUMPTODISK
type: float
current: 1
help: Scale the interest value given to Pure Movement interest items (e.g. something rolling, falling, swinging)

variable: camera_zoom_sensitivity 
type: float
current: 1
help: 

variable: aim_assistMaxDistance 
type: float
current: 150
help: The maximum range at which autoaim operates

variable: r_WaterRipple 
type: int
current: 1
help: 

variable: g_actor_stance_debug 
type: int
current: 0
help: 

variable: min_time_step 
type: float
current: 0.00666667
help: Game systems clamped to this frame time

variable: e_shadows_arrange_deferred_texture_size 
type: int
current: 1
help: Arrange deferred light shadow texture size

variable: g_detachCamera 
type: int
current: 0
help: Detach camera

variable: i_mouse_accel_max DUMPTODISK
type: float
current: 100
help: Set mouse max mouse delta when using acceleration.
Usage: i_mouse_accel_max [float number]
Default is 100.0

variable: e_shadows_terrain_texture_size 
type: int
current: 2048
help: Set maximum resolution of shadow map
256(faster), 512(medium), 1024(better quality)

variable: i_debug 
type: int
current: 0
help: Toggles input event debugging.
Usage: i_debug [0/1]
Default is 0 (off). Set to 1 to spam console with key events (only press and release).

variable: net_voice_lead_packets 
type: int
current: 5
help: 

variable: combat_autoattack_trigger 
type: int
current: 1
help: Enable starting autoattack with related skills

variable: r_TerrainSpecular_IndexOfRefraction 
type: float
current: 1.5
help: Index of refraction for schlick fresnel approximation.

variable: ac_debugSelection 
type: int
current: 0
help: Display locomotion state selection as text.

variable: r_DrawValidation 
type: int
current: 0
help: Validates the device state before every draw call. This can be used to find common problems, and compatibility issues.


variable: g_unit_collide_side_bound_rate 
type: float
current: 0.6
help: 

variable: r_rainOccluderRoofDrawDistance 
type: float
current: 50
help: 

variable: p_splash_vel0 
type: float
current: 4.5
help: Minimum water hit velocity to generate splash events at p_splash_dist0

variable: p_splash_vel1 
type: float
current: 10
help: Minimum water hit velocity to generate splash events at p_splash_dist1

variable: s_MemoryPoolSoundPrimaryRatio 
type: float
current: 0.7
help: Controls at what fill ratio sound data is unloaded.
Usage: s_MemoryPoolSoundPrimaryRatio [0..1]
Default is 0.7.

variable: ag_breakOnQuery 
type: string
current: 
help: If we query for this state, enter break mode

variable: cl_frozenSteps 
type: float
current: 3
help: Number of steps for unfreeze shaking

variable: e_custom_texture_lod 
type: int
current: 4
help: custom texture lod spec [1/2/3/4], 0 is off.

variable: cl_hitShake 
type: float
current: 1.25
help: hit shake

variable: r_MSAA_debug DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 0
help: Enable debugging mode for msaa.
Usage: r_MSAA_debug N (where N is debug mode > 0)
Default: 0. disabled
1 disable sample frequency pass
2 visualize undersampled regions


variable: p_drawPrimitives 
type: int
current: 0
help: should be used with p_draw_helpers. colorizing primitives

variable: pl_zeroGGyroStrength 
type: float
current: 1
help: ZeroG gyro strength (default is 1.0).

variable: e_cbuffer_bias 
type: float
current: 1.05
help: Coverage buffer z-biasing

variable: i_offset_front 
type: float
current: 0
help: Item position front offset

variable: sv_AISystem REQUIRE_APP_RESTART
type: int
current: 1
help: Load and use the AI system on the server

variable: combat_msg_visibility 
type: float
current: 50
help: visibility of damage display widget

variable: r_UseMergedPosts 
type: int
current: 1
help: Enables motion blur merged with dof.
Usage: r_UseMergedPosts [0/1/2]
Default is 1.
1: fastest mode - half res rendering
2: full res rendering mode (tbd)
3: quality mode, hdr + fullres (tbd)


variable: net_defaultChannelPacketRateDesired READONLY
type: float
current: 50
help: 

variable: swim_jump_splash_effect_debug 
type: int
current: 0
help: enable swimming debugging

variable: e_detail_materials_view_dist_xy 
type: float
current: 1024
help: Max view distance of terrain XY materials

variable: ac_debugLocationsGraphs 
type: int
current: 0
help: Display debug history graphs of anim and entity locations and movement.

variable: e_terrain_occlusion_culling_step_size 
type: int
current: 4
help: Initial size of single step (in heightmap units)

variable: r_PostProcessEffectsGameFx 
type: int
current: 1
help: Enables post processing special effects game fx.
Usage: r_PostProcessEffectsGameFx [0/1]
Default is 1 (enabled). 0 disabled

variable: e_shadows_optimize 
type: int
current: 12
help: Shadow Optimize

variable: i_offset_right 
type: float
current: 0
help: Item position right offset

variable: s_MusicMaxPatterns DUMPTODISK
type: int
current: 12
help: Max simultaneously playing music patterns.

variable: test_world_queue 
type: int
current: 0
help: 0 : off, 1 : on

variable: r_ZFightingExtrude 
type: float
current: 0.001
help: Controls anti z-fighting measures in shaders (extrusion along normal in world units).

variable: log_SpamDelay 
type: float
current: 5
help: Sets the minimum time interval between messages classified as spam

variable: s_GameReverbManagerPause 
type: int
current: 0
help: Allows for "pausing" the reverb manager, meaning the currently registered reverb preset(s)
get saved and destroyed and recreated when unpaused again.
Usage: s_GameReverbManagerPause [0/1]
0: unpaused
Default: 0


variable: e_debug_draw_lod_warning_default_lod_ratio 
type: float
current: 0.5
help: used in e_DebugDraw 24 (warning threshold of lod ratio)

variable: sys_SaveCVars 
type: int
current: 0
help: 1 to activate saving of console variables, 0 to deactivate
The variables are stored in 'system.cfg' on quit, only marked variables are saved (0)
Usage: sys_SaveCVars [0/1]
Default is 0

variable: r_HDRRangeAdaptLBufferMaxRange DUMPTODISK
type: float
current: 2
help: Set range adaptation max range adaptation for light buffers (improve precision - minimize banding) 
Usage: r_HDRRangeAdaptLBufferMaxRange [Value]
Default is 2.0f

variable: p_net_velsnapmul 
type: float
current: 0.1
help: Multiplier to expand the p_net_minsnapdist based on the objects velocity

variable: movement_verify_onground_error_rate 
type: float
current: 0.5
help: 

variable: e_stream_areas 
type: int
current: 0
help: Stream content of terrain and indoor sectors

variable: r_TexResolution DUMPTODISK
type: int
current: 0
help: Reduces texture resolution.
Usage: r_TexResolution [0/1/2 etc]
When 0 (default) texture resolution is unaffected, 1 halves, 2 quarters etc.

variable: ag_path_finding_debug 
type: int
current: 0
help: 

variable: r_FastFullScreenQuad 
type: int
current: 2
help: Dont use dynamic Screen Quad.
Usage: r_FastFullScreenQuad [0/1]


variable: ai_event_debug DUMPTODISK
type: int
current: 0
help: Enable/Disable ai event debug. Set to 0 to turn off or input unit id. Can use only editor

variable: queued_skill_margin 
type: int
current: 200
help: queued skill margin

variable: e_water_ocean_simulate_on_zone 
type: int
current: 0
help: Enable water ocean simulate on zone server

variable: sys_physics 
type: int
current: 1
help: Enables Physics Update

variable: e_detail_materials_view_dist_z 
type: float
current: 1024
help: Max view distance of terrain Z materials

variable: e_MtTest 
type: int
current: 0
help: MT Debug

variable: e_cbuffer_max_add_render_mesh_time 
type: int
current: 2
help: Max time for unlimited AddRenderMesh

variable: e_VoxTerTexFormat 
type: int
current: 22
help: Mega-texture format: 22=eTF_DXT1, 24=eTF_DXT5, 7=eTF_A4R4G4B4, 8=eTF_R5G6B5

variable: ca_disableSkinBones 
type: int
current: 0
help: disable skin bones optimization

variable: option_terrain_detail 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_terrain_detail [1/2/3/4/x]:
 ... e_detail_materials_view_dist_xy = 256/512/1024/1024/1024
 ... e_detail_materials_view_dist_z = 256/512/1024/1024/1024
 ... e_detail_materials_zpass_normal_draw_dist = 48/64/80/100/100


variable: e_proc_vegetation_min_density 
type: float
current: 0.5
help: 

variable: ac_ColliderModeAI 
type: int
current: 0
help: Force override collider mode for all AI.

variable: r_texturesstreamingMinReadSizeKB 
type: int
current: 64
help: Minimal read portion in KB.
Usage: r_TexturesStreamingMinReadSizeKB [size]
Default is 64(KB)

variable: e_cbuffer_terrain_z_offset 
type: float
current: -3
help: terrain_z offset

variable: ai_ForceStance 
type: int
current: -1
help: Forces all AI characters to specified stance: disable = -1, stand = 0, crouch = 1, prone = 2, relaxed = 3, stealth = 4, swim = 5, zero-g = 6

variable: p_break_on_validation 
type: int
current: 0
help: Toggles break on validation error.
Usage: p_break_on_validation [0/1]
Default is 0 (off). Issues DebugBreak() call in case of
a physics parameter validation error.

variable: es_debug_not_seen_timeout DUMPTODISK
type: int
current: 0
help: if true, log messages when entities undergo not seen timeout

variable: lua_StopOnError 
type: int
current: 0
help: Stops on error.


variable: ca_MotionBlurMovementThreshold 
type: float
current: 0.001
help: "advanced" Set motion blur movement threshold for discarding skinned object

variable: e_StreamCgfFastUpdateMaxDistance 
type: float
current: 16
help: Update streaming priorities for near objects every second frame

variable: v_wind_minspeed 
type: float
current: 0
help: If non-zero, vehicle wind areas always set wind >= specified value

variable: r_HDRRangeAdaptMax DUMPTODISK
type: float
current: 1
help: Set HDR range adaptation max adaptation (improve precision - minimize banding) 
Usage: r_HDRRangeAdaptMax [Value]
Default is 1.0f

variable: sv_DedicatedCPUPercent 
type: float
current: 0
help: Sets the target CPU usage when running as a dedicated server, or disable this feature if it's zero.
Usage: sv_DedicatedCPUPercent [0..100]
Default is 0 (disabled).

variable: e_RNTmpDataPoolMaxFrames 
type: int
current: 16
help: Cache RNTmpData at least for X framres

variable: client_ddcms_path DUMPTODISK
type: string
current: 
help: 

variable: ShowGameTime 
type: int
current: 0
help: show game time

variable: g_procedural_breaking 
type: int
current: 1
help: Toggles procedural mesh breaking (except explosion-breaking)

variable: ai_PredictivePathFollowing 
type: int
current: 1
help: Sets if AI should use the predictive path following if allowed by the type's config.

variable: net_inactivitytimeout 
type: float
current: 30
help: Set's how many seconds without receiving a packet a connection will stay alive for (can only be set on server)

variable: ai_DebugDrawStanceSize DUMPTODISK
type: int
current: 0
help: Draws the game logic representation of the stance size of the AI agents.

variable: e_ShadowsLodBiasFixed 
type: int
current: 0
help: Simplifies mesh for shadow map generation by X LOD levels

variable: s_MidiFile 
type: int
current: 0
help: Set 1 or larger to output a midi file.
Default is 0.

variable: d3d9_AllowSoftware REQUIRE_APP_RESTART
type: int
current: 1
help: 

variable: e_VegetationSpritesBatching 
type: int
current: 0
help: Activates batch processing for sprites, optimizes CPU usage in case of dense vegetation

variable: g_quickGame_prefer_lan DUMPTODISK
type: int
current: 0
help: QuickGame option

variable: e_ShadowsLodBiasInvis 
type: int
current: 0
help: Simplifies mesh for shadow map generation by X LOD levels, if object is not visible in main frame

variable: camera_hit_test_radius 
type: float
current: 0.2
help: 

variable: e_DissolveDistband 
type: float
current: 5
help: Over how many metres transition takes place

variable: district_shape 
type: int
current: 0
help: draw district shape (0: off, 1: on)

variable: bot_account 
type: string
current: 
help: bot account

variable: e_shadows_water 
type: int
current: 0
help: Enable/disable shadows on water

variable: r_GPUProfiler 
type: int
current: 0
help: Enables or disables the code that gathers profiles the current GPU performance. Used by profiling displays implemented at higher levels.


variable: e_GIIterations 
type: int
current: 10
help: Maximum number of propagation iterations global illumination
The less number of propagation iterations the shorter the bleeding. Default: 6. Max: 32

variable: r_BufferUpload_Enable 
type: int
current: 0
help: Set to enable the multithreaded buffer upload manager

variable: r_MaxDualMtlDepth 
type: int
current: 1
help: 

variable: net_scheduler_debug 
type: string
current: 0
help: Show scheduler debugger for some channel

variable: g_suddendeathtime 
type: int
current: 30
help: Number of seconds before round end to start sudden death. Default if 30. 0 Disables sudden death.

variable: aim_assistAutoCoeff 
type: float
current: 0.5
help: The scale of auto weapons' aim assistance at continuous fire

variable: r_WaterReflections DUMPTODISK
type: int
current: 1
help: Toggles water reflections.
Usage: r_WaterReflections [0/1]
Default is 1 (water reflects).

variable: e_stream_for_visuals 
type: int
current: 1
help: Debug

variable: ai_DebugDrawExpensiveAccessoryQuota DUMPTODISK
type: int
current: 0
help: Displays expensive accessory usage quota on puppets.

variable: s_MusicInfoDebugFilter 
type: int
current: 0
help: Allows for filtered of the music system debugging information(enabled with s_soundInfo 8)
Usage: s_MusicInfoDebugFilter [0,a,b...] (flags can be combined)
Default: 0 (default)
a: All
b: Instances
c: Patterns


variable: e_ProcVegetationMaxSectorsInCache 
type: int
current: 16
help: Maximum number of 64x64 meter sectors cached in memory

variable: ShowEmptyBagSlotCounter 
type: int
current: 1
help: show empty bag slot counter

variable: ag_forceAdjust 
type: int
current: 0
help: Enable forced small step adjustments

variable: r_TexturesStreaming REQUIRE_APP_RESTART
type: int
current: 1
help: Enables direct streaming of textures from disk during game.
Usage: r_TexturesStreaming [0/1]
Default is 1 (on). All textures save in native format with mips in a
cache file. Textures are then loaded into texture memory from the cache.

variable: r_DepthOfFieldBokeh 
type: int
current: 0
help: Sets depth of field bokeh type (only for dof mode 3).
Usage: r_DepthOfFieldBokeh [0/1/etc]
Default is 0 (isotropic/spherical).

variable: cd_pass_collide 
type: int
current: 0
help: toggle to check if vegetation spawn position collide others

variable: quadruped_idle_align 
type: int
current: 1
help: 

variable: ca_AMC_TurnLeaning 
type: float
current: 0.35
help: lean stronger in curves

variable: r_PostAAStencilCulling 
type: int
current: 1
help: Enables post processed AA stencil culling.


variable: ag_lockToEntity 
type: int
current: 0
help: Lock animation to entity (zero offsetting)

variable: option_character_lod 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_character_lod [1/2/3/4/x]:
 ... ca_AttachmentCullingRation = 50			; note characters can be holding things with 2 hands (like a flower pot)... It looks wierd when it disappears/55/60/70/70
 ... ca_AttachmentShadowCullingDist = 10/20/30/40/40
 ... ca_BodyPartAttachmentCullingRation = 100/120/160/200/200
 ... ca_DrawFaceAttachments = 0/1/1/1/1
 ... ca_FacialAnimationRadius = 5.0/3.0/5.0/5.0/5.0
 ... ca_UseFacialAnimation = 0/1/1/1/1
 ... e_lod_skin_ratio = 0.5			; we can't go too low with this, because some low LODS contain flaws/0.8/1/1/1


variable: r_ShowGammaReference 
type: int
current: 0
help: Enables display of gamma reference - useful for monitor/tv calibration.
Usage: r_ShowGammaReference [0/1]

variable: r_TessellationTriangleSize 
type: float
current: 12
help: Desired triangle size for screen-space tessellation.
Default is 8.

variable: r_HDRRangeAdaptMaxRange DUMPTODISK
type: float
current: 4
help: Set HDR range adaptation max adaptation (improve precision - minimize banding) 
Usage: r_HDRRangeAdaptMaxRange [Value]
Default is 4.0f

variable: camera_use_fade_out 
type: float
current: 1
help: 

variable: show_guidedecal 
type: int
current: 0
help: 0 : off, 1 : on

variable: r_texturesstreamingResidencyTimeTestLimit 
type: float
current: 5
help: Time limit to use for mip thrashing calculation in seconds.
Usage: r_TexturesStreamingResidencyTimeTestLimit [time]Default is 5 seconds

variable: e_cbuffer_occluders_lod_ratio 
type: float
current: 0.25
help: Debug

variable: angle_debug 
type: int
current: 0
help: show angle

variable: r_CoronaFade 
type: float
current: 0.5
help: Time fading factor of the light coronas.
Usage: r_CoronaFade 0.5Default is 0.5.

variable: e_gsm_focus_on_unit 
type: int
current: 1
help: Focus on unit position when generate shadows.
0 - don't focus on unit
1 - focus on unit
2 - smooth movement of the shadow frustum based on the camera only

variable: rope_skill_controller_finish_accel_velocity 
type: float
current: 5
help: 

variable: max_arrow_scale_rate 
type: float
current: 0.3
help: Max Arrow Scale Rate

variable: max_arrow_scale_time 
type: float
current: 0.15
help: Max Arrow Scale Time

variable: aln_debug_movement 
type: int
current: 0
help: 

variable: um_decal_shadow 
type: int
current: 0
help: use decal shadow for Actor

variable: r_TexturesStreamPoolLimitRatio 
type: float
current: 0.9
help: percentage of pool size that trigger overflow

variable: sys_budget_sound_channels 
type: float
current: 64
help: 

variable: pl_zeroGBaseSpeed 
type: float
current: 3
help: Maximum player speed request limit for zeroG.

variable: e_cbuffer_terrain_shift 
type: int
current: 1
help: terrain cbuffer dv size

variable: ds_LogLevel 
type: int
current: 0
help: Set the verbosity of DiaLOG Messages

variable: OceanWavesConstantA 
type: float
current: 1
help: wave constant A

variable: OceanWavesConstantB 
type: float
current: 0.707107
help: wave constant B

variable: r_TexturesStreamingDebugfilter 
type: string
current: 
help: Filters displayed textures by name in texture streaming debug mode


variable: ag_debugExactPos 
type: int
current: 0
help: Enable/disable exact positioning debugger

variable: e_statobj_verify 
type: int
current: 0
help: 

variable: departure_server_passport_low 
type: int
current: 0
help: departure_server_passport_low

variable: es_MaxPhysDistInvisible 
type: float
current: 25
help: Invisible physical entities farther from the camera than this are forcefully deactivated

variable: r_moon_reflection_boost 
type: float
current: 1
help: Brighten the colour of moons in reflections. It's a hack to get a slightly nicer look.


variable: ag_signal 
type: string
current: 
help: Send this signal

variable: r_UseParticlesHalfRes_MinCount 
type: int
current: 2
help: Minimum number of particle emitters in half resolution to enable half resolution mode.
Half resolution rendering has a constant performance hit so there's usually no gain if used for a very small number of particles
Usage: r_UseParticlesHalfRes_MinCount [n]

variable: e_render 
type: int
current: 1
help: Enable engine rendering

variable: e_statobj_log 
type: int
current: 0
help: Debug

variable: ag_stance 
type: string
current: 
help: Force this stance

variable: ca_ApplyJointVelocitiesMode 
type: int
current: 0
help: Joint velocity preservation code mode: 0=Disabled, 1=Physics-driven, 2=Animation-driven

variable: ai_ForceAllowStrafing 
type: int
current: -1
help: Forces all AI characters to use/not use strafing (-1 disables)

variable: i_unlimitedammo 
type: int
current: 0
help: unlimited ammo

variable: cl_shallowWaterSpeedMulPlayer 
type: float
current: 0.6
help: shallow water speed multiplier (Players only)

variable: e_StreamCgfPoolSize 
type: int
current: 150
help: Render mesh cache size in MB

variable: e_modelview_Prefab_light_number 
type: int
current: 8
help: modelview Prefab light the number of light entities

variable: e_vegetation_node_level 
type: int
current: -1
help: Debug

variable: cd_cattle_update_distance 
type: float
current: 64
help: 

variable: ca_SerializeSkeletonAnim 
type: int
current: 0
help: Turn on CSkeletonAnim Serialization.

variable: ca_UseAimIKRefPose 
type: int
current: 0
help: If this is set to 1, adjust aim pose by the reference pose if present

variable: bot_profiler_cell_size 
type: float
current: 256
help: meter (default 256m)

variable: r_DeferredShadingStencilPrepass 
type: int
current: 1
help: Toggles deferred shading stencil pre pass.
Usage: r_DeferredShadingStencilPrepass [0/1]
Default is 1 (enabled), 0 Disables

variable: ac_ColliderModePlayer 
type: int
current: 0
help: Force override collider mode for all players.

variable: ca_eyes_procedural 
type: int
current: 1
help: Enables/Disables procedural eyes animation

variable: cd_show_errors 
type: int
current: 0
help: show doodad error info

variable: es_debug 
type: int
current: 0
help: Enable entity debugging info
Usage: es_debug [0/1/2/3]
Default is 0 (on). 1 : normal. 2 : brown mode. 3 : animatoin

variable: ai_ProtoROD DUMPTODISK
type: int
current: 0
help: Proto

variable: option_shader_quality 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_shader_quality [1/2/3/4/x]:
 ... e_GIAmount = 0.1/0.1/0.1/0.1/0.1
 ... e_GIMaxDistance = 200/200/200/200/200
 ... e_Tessellation = 0/0/0/1/1
 ... e_character_back_light = 0/1/1/1/1
 ... e_custom_build_extramaps_fromshaderquality = 3/3/3/3/3
 ... e_dissolve = 0/0/1/1/1
 ... e_gi = 0/0/0/1/1
 ... e_max_entity_lights = 4/7/11/16/16
 ... e_particles_lights = 0/1/1/1/1
 ... e_ram_maps = 0/1/1/1/1
 ... e_sky_type = 0/1/1/1/1
 ... e_sky_update_rate = 0.05/0.1/0.3/1/1
 ... e_terrain_ao = 0/0/1/1/1
 ... e_terrain_normal_map = 0/0/1/1/1
 ... e_vegetation_use_terrain_color = 0/1/1/1/1
 ... q_Renderer = 0/1/2/3/3
 ... q_ShaderFX = 0/1/2/3/3
 ... q_ShaderGeneral = 0/1/2/3/3
 ... q_ShaderGlass = 0/1/2/3/3
 ... q_ShaderHDR = 0/1/2/3/3
 ... q_ShaderIce = 0/1/2/3/3
 ... q_ShaderMetal = 0/1/2/3/3
 ... q_ShaderPostProcess = 0/1/2/3/3
 ... q_ShaderShadow = 0/1/2/3/3
 ... q_ShaderSky = 0/1/2/3/3
 ... q_ShaderTerrain = 0/1/2/3/3
 ... q_ShaderVegetation = 0/1/2/3/3
 ... r_Coronas = 1/1/1/1/1
 ... r_DetailDistance = 0/4/8/8/8
 ... r_DetailNumLayers = 0/1/1/2/2
 ... r_DetailTextures = 0/1/1/1/1
 ... r_EnvTexUpdateInterval = 0.1/0.075/0.05/0.05/0.05
 ... r_Flares = 1/1/1/1/1
 ... r_LightsSinglePass = 1/0/0/0/0
 ... r_PostProcessEffects = 1/1/1/1/1
 ... r_SSAO = 0/0/0/0/0
 ... r_SSDOOptimized = 8/8/10/8/8
 ... r_TexturesFilteringQuality = 2/1/0/0/0
 ... r_UsePom = 0/0/0/1/1
 ... r_colorgrading = 1/1/1/1/1
 ... r_nvssao = 0/0/0/0/0
 ... r_refraction = 1/1/1/1/1
 ... r_ssdo = 0/0/3/3/3
 ... r_sunshafts = 0/0/1/1/1
 ... r_usezpass = 1/1/1/1/1


variable: r_LightBufferOptimized 
type: int
current: 1
help: Usage: r_LightBufferOptimized 1 
0 off (default)
1 SpecualrAcc Merging to DiffuseAcc's Alpha Channel

variable: e_shadows_softer_distant_lods 
type: float
current: 1
help: When set to 1, distant shadow LODs will have softer shadows. This can compensate for lower resolution, but it means the transition from one shadow lod to another is more obvious.

variable: r_ShadersUseScriptCache 
type: int
current: 0
help: 

variable: e_foliage_branches_timeout 
type: float
current: 4
help: Maximum lifetime of branch ropes (if there are no collisions)

variable: pl_debug_movement 
type: int
current: 0
help: 

variable: s_HDRDebug DUMPTODISK
type: int
current: 0
help: Shows debugging information
Usage: s_HDRDebug [0..1]0: none
1: enabled
Default is 0 (off)

variable: aim_assistSearchBox 
type: float
current: 100
help: The area autoaim looks for enemies within

variable: e_custom_dynamic_lod_debug 
type: int
current: 0
help: dynamic lod debug

variable: e_StreamPredictionMaxVisAreaRecursion 
type: int
current: 9
help: Maximum number visareas and portals to traverse.

variable: s_MusicEnable DUMPTODISK
type: int
current: 1
help: enable/disable music

variable: s_StopSoundsImmediately 
type: int
current: 0
help: Toggles to stop sounds without internal fadeout.
Default is 0 (off).
0: Stops sound with fadeout.
1: Stops sounds without fadeout.
Usage: s_StopSoundsImmediately [0/1].

variable: r_ReduceRtChange 
type: int
current: 1
help: Unnessary Specular push op remove in stencil pass.
Usage: r_LightStencilTestOptimize [0/1]


variable: ca_SkipAnimTask 
type: int
current: 0
help: skipping debug

variable: r_DetailNumLayers DUMPTODISK
type: int
current: 2
help: Sets the number of detail layers per surface.
Usage: r_DetailNumLayers 2
Default is 2.

variable: cp_debug_ray_world_intersection 
type: int
current: 0
help: 0 : off, 1 : on, 2 : override objtypes, 4 : override flags, 8 : override nMaxHits to 10

variable: s_HDRRange DUMPTODISK
type: float
current: 0.2
help: Full Volume range below loudest sound
Usage: s_HDRRange [0..1.0f]Default is 0.2f

variable: e_vegetation_cull_test_max_dist 
type: float
current: 30
help: Set vegetation cull test max dist

variable: ai_LogSignals 
type: int
current: 0
help: Maximum radius at which player can interact with other entities

variable: r_Batching 
type: int
current: 1
help: Enable/disable render items buching
Usage: r_Batching [0/1]


variable: pl_zeroGSpeedMultNormalSprint 
type: float
current: 1.7
help: Modify movement speed in zeroG, in normal sprint.

variable: e_terrain_crater_depth 
type: float
current: 0.1
help: 

variable: p_max_LCPCG_microiters_final 
type: int
current: 25000
help: Same as p_max_LCPCG_microiters, but for the final LCP CG iteration

variable: name_tag_fade_out_margin 
type: int
current: 20
help: set unit name tag fadeout margin

variable: option_sound 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_sound [1/2/3/4/x]:
 ... s_AudioPreloadsFile = audiopreloads_64/audiopreloads_64/audiopreloads_64/audiopreloads_64/audiopreloads_64
 ... s_FileCacheManagerEnable = 1/1/1/1/1
 ... s_FileCacheManagerSize = 50/50/50/50/50
 ... s_FormatSampleRate = 22050/44100/44100/44100/44100
 ... s_MPEGDecoders = 16/24/32/32/32
 ... s_MaxActiveSounds = 24/48/72/100/100
 ... s_MaxChannels = 16/32/48/64/64
 ... s_MaxMIDIChannels = 5/8/8/8/8
 ... s_MemoryPoolSoundPrimary = 20/30/30/30/30
 ... s_Obstruction = 2/2/2/1/1
 ... s_ObstructionAccuracy = 0/1/1/1/1
 ... s_ObstructionUpdate = 1.0/0.5/0.2/0.1/0.1
 ... s_ReverbType = 0/0/2/2/2
 ... s_SoundMoods = 0/1/1/1/1
 ... s_SoundMoodsDSP = 0/1/1/1/1
 ... s_VariationLimiter = 0.3/0.6/1.0/1.0/1.0


variable: option_water 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_water [1/2/3/4/x]:
 ... e_water_ocean_fft = 0/0/1/1/1
 ... e_water_tesselation_amount = 6/6/7/10/10
 ... e_water_tesselation_swath_width = 5/10/10/10/10
 ... q_ShaderWater = 1/1/2/2/2
 ... r_WaterCaustics = 0/0/1/1/1
 ... r_WaterReflectionsMinVisiblePixelsUpdate = 0.05/0.05/0.05/0.05/0.05
 ... r_WaterReflectionsQuality = 0/1/3/4/4
 ... r_WaterRipple = 0/1/1/1/1


variable: e_hw_occlusion_culling_water 
type: int
current: 1
help: Activates usage of HW occlusion test for ocean

variable: ai_IgnorePlayer 
type: int
current: 0
help: Makes AI ignore the player.
Usage: ai_IgnorePlayer [0/1]
Default is 0 (off). Set to 1 to make AI ignore the player.
Used with ai_DebugDraw enabled.

variable: s_MusicFormat DUMPTODISK
type: int
current: 1
help: Format used for streaming music data.Usage: s_MusicFormat 1.0
	0: (AD)PCM
	1: OGG
	4: FSB
Default is PC: 1 (OGG), Xbox360: 4 (FSB), PS3: 4 (FSB)

variable: ca_disable_thread DUMPTODISK
type: int
current: 1
help: TEMP Disable Animation Thread.

variable: es_UpdateScript 
type: int
current: 1
help: 
Usage: 
Default is 1 (on).

variable: e_terrain_texture_lod_ratio 
type: float
current: 1
help: Adjust terrain base texture resolution on distance

variable: p_max_contacts 
type: int
current: 150
help: Maximum contact number, after which contact reduction mode is activated

variable: s_HDRLoudnessFalloff DUMPTODISK
type: float
current: 0.002
help: Reduction in Loudness per meter Squared
Usage: s_HDRLoudnessFalloff [0...]Default is 0.002f

variable: ai_SteepSlopeUpValue 
type: float
current: 1
help: Indicates slope value that is borderline-walkable up.
Usage: ai_SteepSlopeUpValue 0.5
Default is 1.0 Zero means flat. Infinity means vertical. Set it smaller than ai_SteepSlopeAcrossValue

variable: lua_logging_last_callmethod 
type: int
current: 1
help: Enables the logging last_callmethod
0: disable 
1: enable 
Usage: lua_logging_last_callmethod [0/1] 


variable: effect_debug_particle 
type: int
current: 0
help: 1:count, 2:count and unit id

variable: r_ColorBits DUMPTODISK
type: int
current: 32
help: Sets the color resolution, in bits per pixel. Default is 32.
Usage: r_ColorBits [32/24/16/8]

variable: e_terrain_occlusion_culling_max_dist 
type: float
current: 200
help: Max length of ray (for version 1)

variable: gt_debug 
type: int
current: 0
help: Debug Game Tokens

variable: aim_assistSingleCoeff 
type: float
current: 1
help: The scale of single-shot weapons' aim assistance

variable: um_crawl_groundalign_smooth_time 
type: float
current: 0.1
help: 0.0 ~ 1.0, default : 1.0

variable: r_WaterUpdateChange DUMPTODISK
type: float
current: 0.01
help: View-space change factor for water reflection updating.
Usage: r_WaterUpdateChange 0.01
Range is [0.0, 1.0], default is 0.01, 0 means update every frame.

variable: e_shadows_max_texture_size 
type: int
current: 2048
help: Set maximum resolution of shadow map
256(faster), 512(medium), 1024(better quality)

variable: e_ShadowsTessellateCascades 
type: int
current: 1
help: Maximum cascade number to render tessellated shadows (0 = no tessellation for sun shadows)

variable: distance_helper 
type: int
current: 0
help: distance helper

variable: e_modelview_Prefab_light_radius 
type: float
current: 15
help: modelview Prefab light source radius

variable: mate_x_offset 
type: float
current: 3
help: pet spawn x offset

variable: r_visareaDebug 
type: int
current: 0
help: visarea debug [0/1]

variable: r_ImpostersUpdatePerFrame 
type: int
current: 6000
help: How many kilobytes to update per-frame.
Usage: r_ImpostersUpdatePerFrame [1000-30000]
Default is 6000 (6 megabytes).

variable: g_ignore_chat_filter 
type: int
current: 0
help: 0(use chat filter), 1(no chat filter)

variable: name_tag_render_size 
type: int
current: 100
help: set unit name tag render size

variable: ca_NoDeform 
type: int
current: 0
help: the skinning is not performed during rendering if this is 1

variable: sys_budget_tris_terrain_detail 
type: float
current: 40
help: 

variable: r_texturesStreamUseMipOffset 
type: int
current: 0
help: Set to 1 to use the mip-offset code (creates smaller textures for when only partial mip maps are needed)

variable: r_auxGeom 
type: int
current: 1
help: 

variable: e_VoxTer 
type: int
current: 0
help: Debug

variable: camera_max_dist_debug 
type: float
current: 200
help: 

variable: ag_safeExactPositioning 
type: int
current: 1
help: Will teleport the entity to the requested position/orientation when EP think it's done.

variable: ai_LogFileVerbosity DUMPTODISK
type: int
current: 0
help: None = 0, progress = 1, event = 2, comment = 3

variable: s_AllowNotCachedAccess 
type: int
current: 1
help: Controls whether to allow sound load requests that are not cached in the AFCM or not.
Usage: s_AllowNotCachedAccess [0/1]
0: OFF (not allowing access to not cached data)
Default PC: 1, PS3: 0, XBox360: 0


variable: r_UseGSParticles 
type: int
current: 0
help: Toggles use of geometry shader particles (DX10 only, changing at runtime is supported).Usage: r_UseGSParticles [0/1=default]

variable: r_ShadersAlwaysUseColors 
type: int
current: 1
help: 

variable: sys_preload 
type: int
current: 0
help: Preload Game Resources

variable: net_log 
type: int
current: 0
help: Logging level of network system

variable: queued_skill_debug 
type: int
current: 0
help: Enable Queued skill debug.
usage: queued_skill_debug [0(off)|1(on)]
default: 0 (off)

variable: s_UnusedSoundCount 
type: int
current: 64
help: Sets count of sound objects that get stored in the unused sounds list.
Usage: s_UnusedSoundCount [0/...]
Default is 64.

variable: r_ThermalVisionViewCloakFrequencySecondary 
type: int
current: 1
help: Sets thermal vision cloaked-object flicker secondary frequency.
Usage: r_ThermalVisionViewCloakFrequencySecondary [1+]
When looking at a refracting (cloaked) object sets the inverse frequency of the secondary sine wave for the objects heat. Higher = slower

variable: builder_rotate_angle 
type: float
current: 5
help: builder rotation angle per single input

variable: r_GeneralPassGeometrySorting 
type: int
current: 0
help: General Pass geometry sorting
0: Sort by Resource (default)
1: Sory by Geometry first


variable: ai_DrawRadarDist DUMPTODISK
type: int
current: 20
help: AI radar draw distance in meters, default=20m.

variable: ai_SOMSpeedRelaxed SAVEGAME
type: float
current: 1.5
help: Multiplier for the speed of increase of the Stealth-O-Meter before the AI has seen the enemy.
Usage: ai_SOMSpeedRelaxed 1.5
Default is 4.5. A lower value causes the AI to react to the enemy
to more slowly during combat.

variable: ai_DefaultWalkability DUMPTODISK
type: int
current: 1
help: 1=Use ours(X2) walkability, 2=Cry's walkability

variable: user_music_disable_others 
type: int
current: 0
help: disable others user music. default is 0.

variable: e_terrain_ib_stats 
type: int
current: 0
help: Set to 1 to display stats about the terrain IB generation.

variable: ai_ForceLookAimTarget 
type: string
current: none
help: Forces all AI characters to use/not use a fixed look/aim target
none disables
x, y, xz or yz sets it to the appropriate direction
otherwise it forces looking/aiming at the entity with this name (no name -> (0, 0, 0))

variable: ca_SkipLoadThinFat 
type: int
current: 0
help: Skip loading fat	hin stuff if enabled

variable: log_doodad_interaction 
type: int
current: 0
help: log doodad interaction distance

variable: hs_simple_grid_draw RESTRICTEDMODE
type: int
current: 0
help: shows grid at my pos

variable: g_preroundtime 
type: int
current: 8
help: Frozen time before round starts. Default is 8, 0 Disables freeze time.

variable: e_cbuffer_draw_occluders 
type: int
current: 0
help: Debug draw of occluders for coverage buffer

variable: s_MemoryPoolSystem REQUIRE_APP_RESTART
type: float
current: 0
help: Sets the size in MB of the sound system memory pool. This memory is always located in main memory.
Usage: s_MemoryPoolSystem [0..]
0:			<auto>, PC:2.5, PS3:2.5, X360:2.5
Default is 0 <auto>.

variable: s_ADPCMDecoders REQUIRE_APP_RESTART
type: int
current: 0
help: Sets maximum number of ADPCM Decoder.
Usage: s_ADPCMDecoders 32
0:			<auto>, PC:32, PS3:0, X360:0
Default is 0 <auto>.

variable: camera_align_sprung_ratio 
type: float
current: 2
help: 

variable: ac_DebugFilter 
type: string
current: 0
help: Debug specified entity name only.

variable: g_play_die_anim 
type: int
current: 0
help: 0 : off, 1 : on

variable: e_CoarseShadowMask 
type: float
current: 0
help: Allows coarse shadow mask approximation for alpha blended geometry
0 = Off
1 = Enabled and use asynchronous physics queries
2 = Enabled (but don't use asynchronous physics queries - debug)


variable: ag_logeffects 
type: int
current: 0
help: AGAttachmentEffect logging

variable: ag_physErrorOuterRadiusFactor DUMPTODISK
type: float
current: 0.2
help: 

variable: e_hw_occlusion_culling_objects 
type: int
current: 0
help: Activates usage of HW occlusion test for objects

variable: r_NVDOF_BokehSize 
type: float
current: 4
help: Controls the size of the bokeh artifacts (default 4).


variable: s_GameSFXVolume 
type: float
current: 0.200001
help: Controls the sfx volume for game use.
Usage: s_GameSFXVolume 0.5
Default is 1, which is full volume.

variable: s_X2CullingMaxChannelRatio 
type: float
current: 0.8
help: culling by max channel ratio.
Usage: s_CullingByX2SoundPriorityRatio [0..1]
Default is 0.8 (80% of max channels).

variable: skill_controller_debug 
type: int
current: 0
help: 0 : off, 1 : on

variable: e_particles_high 
type: float
current: 60
help: particle lod high

variable: e_lod_sync_view_dist 
type: int
current: 1
help: 

variable: combat_msg_level 
type: int
current: 1
help: 0 : self, 1 : party, 2 : raid team, 3 : expedition, 4 : all

variable: r_TexturesStreamingDebugMinMip 
type: int
current: 100
help: Filters displayed textures by loaded mip in texture streaming debug mode

variable: r_ShowTexture 
type: int
current: 0
help: Displays texture - for debug purpose
 Usage : r_ShowTexture [0=off/texId]

variable: s_UnloadProjects 
type: int
current: 1
help: Toggles automatic unloading of a project if it was not in use for 20 secs.
Usage: s_UnloadProjects [0/1]
Default is 0.

variable: r_ShaderCompilerServer 
type: string
current: localhost
help: Usage: r_ShaderCompilerServer localhost 
Default is 8core5 

variable: r_WaterUpdateFactor DUMPTODISK
type: float
current: 0.01
help: Distance factor for water reflected texture updating.
Usage: r_WaterUpdateFactor 0.01
Default is 0.01. 0 means update every frame

variable: net_defaultChannelBitRateDesired READONLY
type: float
current: 200000
help: 

variable: ai_DrawNode DUMPTODISK
type: string
current: none
help: Toggles visibility of named agent's position on AI triangulation.
Usage: ai_DrawNode [ai agent's name]
Default is 0. Set to 1 to show the current triangle on terrain level
and closest vertex to player.

variable: ai_DrawPath DUMPTODISK
type: string
current: none
help: Draws the generated paths of the AI agents.
Usage: ai_DrawPath [name]
Default is none (nobody).

variable: ai_DrawType DUMPTODISK
type: int
current: -1
help: Toggles drawing AI objects of particular type for debugging AI.


variable: r_ShadowBlur DUMPTODISK
type: int
current: 3
help: Selected shadow map screenspace blurring technique.
Usage: r_ShadowBlur [0=no blurring(fastest)/1=blur/2=blur/3=blur without leaking(slower)]


variable: r_ShadowPass 
type: int
current: 1
help: Process shadow pass

variable: e_temp_pool_size 
type: float
current: 1024
help: pool size for temporary allocations in kb, requires app restart

variable: d3d9_NullRefDevice REQUIRE_APP_RESTART
type: int
current: 0
help: 

variable: ca_DrawAimPoses 
type: int
current: 0
help: draws the wireframe of the aim poses

variable: e_cbuffer_test_mode 
type: int
current: 2
help: Debug

variable: ca_DrawWireframe 
type: int
current: 0
help: draws a wireframe on top of the rendered character

variable: d3d9_rb_Verts REQUIRE_APP_RESTART
type: int
current: 32768
help: 

variable: camera_zoom_catch_up_base_velocity 
type: float
current: 5
help: 

variable: swim_debug 
type: int
current: 0
help: enable swimming debugging

variable: r_NVSSAO_SceneScale 
type: float
current: 0.5
help: "Scene Scale" for the ambient occlusion calculation. The higher the number, the larger the geometry shapes have to be to generate occlusion.This is, a small scene scale means fine details generate occlusion. A high scene scale mean large details generate occlusion, and fine ridges are missed. Default is .5f.


variable: r_ShadowsOmniLightLimit 
type: int
current: 6
help: Sets a limit to the maximum number of omni lights that can be casting a shadow at the same time. Set to 0 to disable.

variable: e_water_tesselation_amountX 
type: int
current: 10
help: Set tessellation on x axis - 0 means not used

variable: e_water_tesselation_amountY 
type: int
current: 10
help: Set tessellation on y axis - 0 means not used

variable: e_CoverageBufferCullIndividualBrushesMaxNodeSize 
type: int
current: 0
help: 128 - cull only nodes of scene tree and very big brushes
0 - cull all brushes individually

variable: ai_Recorder DUMPTODISK
type: int
current: 0
help: Enables AI debug recording


variable: ac_debugFutureAnimPath 
type: int
current: 0
help: Display future animation path given current motion parameters.

variable: ai_LimitPhysicsRequestPerFrame 
type: int
current: 2000
help: 

variable: mouse_clear_targeting 
type: int
current: 0
help: 

variable: tab_targeting_history_expire_time 
type: float
current: 3
help: 

variable: ai_EnableSystemAggroCancel DUMPTODISK
type: int
current: 1
help: Enable/Disable aggro cancel by system automatically. Set to 0 to turn off.

variable: e_ram_maps DUMPTODISK, REQUIRE_LEVEL_RELOAD
type: int
current: 1
help: Use RAM (realtime ambient maps) on brushes

variable: ai_UpdateFromUnitId 
type: int
current: 0
help: Deactivate ai if unit id is lower than this number

variable: option_skill_alert_enable 
type: int
current: 1
help: option_skill_alert_enable

variable: ai_PuppetDirSpeedControl 
type: int
current: 1
help: Does puppet speed control based on their current move dir

variable: pl_debug_ladders 
type: int
current: 0
help: 

variable: ai_ProtoRODAliveTime DUMPTODISK
type: float
current: 10
help: Proto

variable: e_screenshot_quality 
type: int
current: 30
help: used for e_panorama_screenshot to define the quality
0=fast, 10 .. 30 .. 100 = extra border in percent (soften seams), negative value to debug

variable: r_HDRDebug 
type: int
current: 0
help: Toggles HDR debugging info (to debug HDR/eye adaptaion)
Usage: r_HDRDebug [0/1/2]
0 off (default)
1 to show some internal HDR textures on the screen
2 to identify illegal colors (grey=normal, red=NotANumber, green=negative)

variable: name_tag_hostile_mate_show 
type: int
current: 1
help: render name tag of hostile mate unit

variable: r_ShaderCompilerDontCache 
type: int
current: 0
help: Disables caching on server side.
Usage: r_ShaderCompilerDontCache 0 #
Default is 0

variable: ac_debugColliderMode 
type: int
current: 0
help: Display filtered and requested collider modes.

variable: ai_ExtraRadiusDuringBeautification 
type: float
current: 0.2
help: Extra radius added to agents during beautification.

variable: r_HDRLevel DUMPTODISK
type: float
current: 8
help: HDR rendering level (bloom multiplier, tweak together with threshold)
Usage: r_HDRLevel [Value]
Default is 0.6

variable: ca_DebugAnimUpdates 
type: int
current: 0
help: shows the amount of skeleton-updates

variable: r_DeferredShadingTilesX DUMPTODISK
type: float
current: 16
help: 

variable: r_DeferredShadingTilesY DUMPTODISK
type: float
current: 12
help: 

variable: model_streaming_max_task 
type: int
current: 2
help: 

variable: e_HwOcclusionCullingObjects 
type: int
current: 0
help: Activates usage of HW occlusion test for objects

variable: r_particles_lights_limit 
type: int
current: 100
help: particle lights limit

variable: net_lan_scanport_first DUMPTODISK
type: int
current: 64100
help: Starting port for LAN games scanning

variable: sys_root READONLY
type: string
current: 
help: 

variable: sys_spec 
type: int
current: 0
help: Tells the system cfg spec. (0=custom, 1=low, 2=med, 3=high, 4=veryhigh)

variable: aim_assistSnapDistance 
type: float
current: 3
help: The maximum deviation autoaim is willing to compensate for

variable: e_mipmap_show 
type: float
current: 0
help: visualize texture mipmap level

variable: sound_others_skill_sound_volume 
type: float
current: 0.8
help: target != player and source != player. [0.0 - 1.0]

variable: e_gsm_range_start 
type: float
current: 3
help: Size of LOD 0 GSM area (in meters)

variable: ua_filter 
type: string
current: none
help: filter unit attributes.

variable: ai_BannedNavSoTime DUMPTODISK
type: float
current: 20
help: Time indicating how long invalid navsos should be banned.

variable: um_use_attachment 
type: int
current: 0
help: use attachment system when attaching units

variable: dt_time 
type: float
current: 0.25
help: time in seconds between double taps

variable: ui_double_click_interval DUMPTODISK
type: float
current: 0.8
help: ui double click interval

variable: cd_builder_snap 
type: int
current: 0
help: use builder snap

variable: r_DeferredDecalsLowSpec REQUIRE_APP_RESTART
type: int
current: 1
help: Enables deferred decals in extreme low spec mode (no-zpass mode)

variable: e_character_light_max_dist 
type: float
current: 10
help: Character Light Max Dist

variable: mov_NoCutscenes 
type: int
current: 0
help: Disable playing of Cut-Scenes

variable: pl_zeroGFloatDuration 
type: float
current: 1.25
help: Floating duration until full stop (after stopped thrusting).

variable: transfer_debug 
type: int
current: 0
help: show transfer debug info

variable: r_DebugRefraction 
type: int
current: 0
help: Debug refraction usage. Displays red instead of refraction
Usage: r_DebugRefraction
Default is 0 (off)

variable: r_TerrainAO 
type: int
current: 7
help: 7=Activate terrain AO deferred passes

variable: camera_close_up_fade_out_distance 
type: float
current: 1
help: 

variable: i_debug_mp_flowgraph 
type: int
current: 0
help: Displays info on the MP flowgraph node

variable: blink_debug_cursor 
type: int
current: 0
help: use cursor pos as blink target

variable: ragdoll_hit_bone 
type: string
current: 
help: strike target by the impulse at bone at attack hit event[0(off)|(bonename)]
default: 0(off)

variable: r_UseParticlesHalfResDebug 
type: int
current: 0
help: Render half resolution particles tinted with a color.
Usage: r_UseParticlesHalfResDebug [0/1]

variable: e_dynamic_light 
type: int
current: 1
help: Activates dynamic light sources. 2 : show sphere at dynamic light. 3 : show view distance

variable: fg_profile 
type: int
current: 0
help: Flow graph profiling enable/disable

variable: r_UseParticlesHalfResForce 
type: int
current: 0
help: Forces all particles of given blend operation to be rendered in half resolution.
Usage: r_UseParticlesHalfResForce [0-off/1-additive/2-alphabased]

variable: movement_verify_onground_height_tolerance 
type: float
current: 5
help: 

variable: e_ShadowsDebug 
type: int
current: 0
help: 0=off, 2=visualize shadow maps on the screen

variable: r_WaterUpdateDistance 
type: float
current: 2
help: 

variable: cl_screeneffects 
type: int
current: 1
help: Enable player screen effects (depth-of-field, motion blur, ...).

variable: simulate_actor_gc_hack 
type: int
current: 0
help: Turn on/off actor gc hack simulation. 0: off, n: on. And the number means a gc unit id

variable: e_gsm_range_rate 
type: float
current: 20
help: e_gsm_range is separated e_gsm_range_rate and e_gsm_range_start

variable: e_gsm_range_step 
type: float
current: 3.5
help: Range of next GSM lod is previous range multiplied by step

variable: es_bboxes 
type: int
current: 0
help: Toggles entity bounding boxes.
Usage: es_bboxes [0/1]
Default is 0 (off). Set to 1 to display bounding boxes.

variable: r_DisplayInfo DUMPTODISK, RESTRICTEDMODE
type: int
current: 0
help: Toggles debugging information display.
Usage: r_DisplayInfo [0=off/1=show/2=enhanced/3=simple]


variable: e_dissolve 
type: int
current: 1
help: Objects alphatest_noise_fading out on distance

variable: r_TexturesStreamingIgnore 
type: int
current: 0
help: 

variable: bot_param_1 
type: string
current: 
help: bot param 1

variable: bot_param_2 
type: string
current: 
help: bot param 2

variable: bot_param_3 
type: string
current: 
help: bot param 3

variable: log_tick 
type: float
current: 0
help: When not 0, writes tick log entry into the log file, every N seconds

variable: ai_WarningPhysicsRequestCount 
type: int
current: 1000
help: 

variable: ca_DrawPerformanceOption 
type: int
current: 0
help: if this is 1, it will draw performance option informations, LOD level, visible bone count, etc...

variable: e_vegetation_sprites_distance_ratio 
type: float
current: 0.8
help: Allows changing distance on what vegetation switch into sprite

variable: ai_WaterOcclusion DUMPTODISK
type: float
current: 0.5
help: scales how much water hides player from AI

variable: r_RenderMeshLockLog 
type: int
current: 0
help: 

variable: ag_averageTravelSpeed 
type: int
current: 0
help: Average travel speed over a few frames

variable: g_ignore_raid_joint 
type: int
current: 0
help: 0(accept raid joint), 1(ignore raid joint)

variable: e_particles_trail_debug 
type: int
current: 0
help: Debug swoosh effect (sword trail)

variable: sv_gs_report 
type: int
current: 1
help: Enable Gamespy server reporting, this is necessary for NAT negotiation

variable: mfx_Timeout 
type: float
current: 0.2
help: Timeout (in seconds) to avoid playing effects too often

variable: rope_change_asset_test 
type: int
current: 0
help: 

variable: r_ShaderCompilerPort 
type: int
current: 61453
help: set user defined port of the shader compile server.
Usage: r_ShaderCompilerPort 61453 #
Default is 61453

variable: camera_move_accel_time 
type: float
current: 0.2
help: 

variable: ac_debugLocations 
type: int
current: 0
help: Debug render entity (blue), animation (red) and prediction (yellow).

variable: net_actor_force_sync_period 
type: int
current: 3000
help: force sending movement sync packet period (ms)

variable: ai_Autobalance 
type: int
current: 0
help: Set to 1 to enable autobalancing.

variable: ui_draw_level DUMPTODISK
type: int
current: 1
help: ui drawing level
 0: draw no widget
 1: draw widgets (normal)
 2: draw debug border and id of the widget below mouse cursor
 3: draw font texture for debug


variable: p_joint_dmg_accum_thresh 
type: float
current: 0
help: If set, joint damage over this threshold will be accumulated

variable: profile_weighting 
type: int
current: 0
help: Profiler smoothing mode: 0 = legacy, 1 = average, 2 = peak weighted, 3 = peak hold.


variable: g_ragdoll_minE_max 
type: float
current: 0.1
help: 0 : off, 1 : on

variable: ai_DrawAnchors DUMPTODISK
type: int
current: 0
help: Toggles drawing AI anchors.

variable: p_group_damping 
type: float
current: 0.5
help: Toggles damping for object groups.
Usage: p_group_damping [0/1]
Default is 1 (on). Used for internal tweaking only.

variable: p_joint_dmg_accum 
type: float
current: 0
help: If set, joint damage will be accumulated

variable: e_screenshot_min_slices 
type: int
current: 4
help: used for e_panorama_screenshot to define the quality
0=fast, 10 .. 30 .. 100 = extra border in percent (soften seams), negative value to debug

variable: net_connectivity_detection_interval 
type: float
current: 1
help: 

variable: prefab_stream_xml 
type: int
current: 1
help: 

variable: cu_no_spawn 
type: int
current: 0
help: 

variable: r_SSReflExp 
type: float
current: 0.25
help: Reflection exponent, applied to glossiness material property

variable: camera_test 
type: float
current: 0
help: 

variable: sys_budget_tris_terrain 
type: float
current: 80
help: 

variable: r_NormalsLength 
type: float
current: 0.1
help: Sets the length of displayed vectors.
r_NormalsLength 0.1
Default is 0.1 (metres). Used with r_ShowTangents and r_ShowNormals.

variable: s_SoundInfoLogFile 
type: string
current: 
help: Writes a log file once in xml format with the current sound info setting.
Works currently only with s_SoundInfo 11, 12 and 13!
Usage: s_SoundInfoLogFile <file name without extension>
Default: 


variable: next_sys_spec_full DUMPTODISK
type: int
current: 4
help: 

variable: e_detail_objects 
type: int
current: 1
help: Turn detail objects on/off

variable: sound_my_material_effect_sound_volume 
type: float
current: 1
help: me or my pet's material effect sound volume. [0.0 - 1.0]

variable: p_profile_entities 
type: int
current: 0
help: Enables per-entity time step profiling

variable: ShowFps 
type: int
current: 1
help: show fps

variable: ac_MCMHorOtherPlayer 
type: int
current: 1
help: Overrides the horizontal movement control method specified by AG (overrides filter).

variable: g_unit_collide_bottom_box_size_rate 
type: float
current: 0.9
help: 

variable: e_gsm_extra_range_sun_update_ratio 
type: float
current: 0
help: SunDir update ratio

variable: ShowServerTime 
type: int
current: 0
help: show server time

variable: p_skip_redundant_colldet 
type: int
current: 1
help: Specifies whether to skip furher collision checks between two convex objects using the simple solver
when they have enough contacts between them

variable: s_DummySound DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 0
help: Toggles dummy(NULL) sound system.

variable: e_target_decals_deffered 
type: int
current: 1
help: 1 - target decals to deferred

variable: e_terrain_render_profile 
type: int
current: 0
help: 

variable: ca_DrawNormals 
type: int
current: 0
help: draws the normals of the rendered character

variable: ca_DebugSubstateTransitions DUMPTODISK
type: int
current: 0
help: if this is 1, it will be possible to test blending between sub-states of an AAC

variable: e_view_dist_custom_ratio 
type: float
current: 100
help: View distance ratio for special marked objects (Players,AI,Vehicles)

variable: ai_ProfileGoals 
type: int
current: 0
help: Toggles timing of AI goal execution.
Usage: ai_ProfileGoals [0/1]
Default is 0 (off). Records the time used for each AI goal (like
approach, run or pathfind) to execute. The longest execution time
is displayed on screen. Used with ai_DebugDraw enabled.

variable: s_StreamProjectFiles 
type: int
current: 1
help: Toggles if project files are streamed into memory or middleware loads them blocking.
Usage: s_StreamProjectFiles [0/1]
Default is 1 (on).

variable: r_BeamsMaxSlices 
type: int
current: 200
help: Number of volumetric slices allowed per light beam.
Usage: r_BeamsMaxSlices [1-300]
Default is 200 (high-spec).

variable: r_shadersSaveListRemote 
type: int
current: 11
help: shaderlist.txt copy to darmoon cache folder
0x1 = editor
0x2 = client
0x4 = reserved don't use this
0x8 = remove local host


variable: v_help_tank_steering 
type: int
current: 0
help: Enable tank steering help for AI

variable: ShowActionBar_1 
type: int
current: 1
help: show default action bar

variable: ShowActionBar_2 
type: int
current: 1
help: show second action bar

variable: ShowActionBar_3 
type: int
current: 0
help: show third action bar

variable: ShowActionBar_4 
type: int
current: 0
help: show fourth action bar

variable: ShowActionBar_5 
type: int
current: 0
help: show fifth action bar

variable: ShowActionBar_6 
type: int
current: 0
help: show sixth action bar

variable: e_vegetation_min_size DUMPTODISK, REQUIRE_LEVEL_RELOAD
type: float
current: 0
help: Minimal size of static object, smaller objects will be not rendered

variable: aa_maxDist 
type: float
current: 10
help: max lock distance

variable: ca_fallAndPlayStandUpDuration 
type: float
current: 0.3
help: 

variable: e_cbuffer_debug_draw_scale 
type: float
current: 1
help: Debug

variable: r_ShadowsMaskResolution 
type: int
current: 0
help: 0=per pixel shadow mask
1=horizontal half resolution shadow mask
2=horizontal and vertical half resolution shadow mask
Usage: r_ShadowsMaskResolution [0/1/2]


variable: p_notify_epsilon_living 
type: float
current: 0.001
help: 

variable: net_defaultChannelIdlePacketRateDesired READONLY
type: float
current: 0.05
help: 

variable: g_enableitems 
type: int
current: 1
help: Enable/disable the item system

variable: pl_zeroGSpeedMultNormal 
type: float
current: 1.2
help: Modify movement speed in zeroG, in normal mode.

variable: fr_fturn_scale DUMPTODISK
type: float
current: 2
help: free camera fast turn speed scale

variable: camera_min_dist 
type: float
current: 0
help: 

variable: pl_debug_jump_mult 
type: float
current: 1
help: 

variable: e_vegetation_alpha_blend 
type: int
current: 1
help: Allow alpha blending for vegetations

variable: sys_trackview 
type: int
current: 1
help: Enables TrackView Update

variable: quest_cam_dof_blur 
type: float
current: 1
help: quest cam dof blur

variable: es_StreamDebug 
type: int
current: 0
help: 

variable: r_PostAAInEditingMode 
type: int
current: 1
help: Enables amortized super sampling in editing mode. Uses camera jittering which can cause flickering of helper objects
Usage: r_PostAAInEditingMode [0/1]

variable: e_foliage_wind_activation_dist 
type: float
current: 25
help: If the wind is sufficiently strong, visible foliage in this view dist will be forcefully activated

variable: cd_debug 
type: int
current: 0
help: show doodad debug info. 
1:type name and streaming
2:type name(id,typeId)
3:lod
<type>:type name(id,typeId) only for specified type

variable: ai_InterestSystem DUMPTODISK
type: int
current: 0
help: Enable interest system

variable: ai_CloakIncrementMod DUMPTODISK
type: float
current: 1
help: how fast cloak fades out

variable: e_gsm_combined 
type: int
current: 0
help: Variable to tweak the performace of directional shadow maps
0=individual textures are used for each GSM level, 1=texture are combined into one texture

variable: s_UnloadData 
type: int
current: 1
help: Toggles unloading of sound data by the AssetManager.
Usage: s_UnloadData [0/1]
Default is 1.

variable: r_ShadersIgnoreIncludesChanging 
type: int
current: 0
help: 

variable: r_TexturesStreamingOnlyVideo 
type: int
current: 0
help: 

variable: r_UseDualMaterial 
type: int
current: 1
help: Enables dual material rendering.
Usage: r_UseDualMaterial [0/1]
Default is 1 (on). Set to 0 to disable dual material.


variable: g_useLastKeyInput 
type: int
current: 1
help: Use last key input.

variable: r_ShowRenderTarget 
type: int
current: 0
help: Displays special render targets - for debug purpose
Usage: r_ShowRenderTarget [0=off/1/2/3/4/5/6/7/8/9]
	1: s_ptexZTarget
	2: s_ptexSceneTarget
	3: s_ptexScreenShadowMap[0]
	4: s_ptexScreenShadowMap[1]
	5: s_ptexScreenShadowMap[2]
	6: gTexture
	7: gTexture2
	8: s_ptexScatterLayer
	9: pEnvTex->m_pTex->m_pTexture
11: SSAO render target
16: Downscaled depth target for SSAO


variable: r_Supersampling 
type: int
current: 1
help: Use supersampled antialiasing(1 - 1x1 no SSAA, 2 - 2x2, 3 - 3x3 ...)

variable: r_RainDropsEffect 
type: int
current: 1
help: Enable RainDrops effect.
Usage: r_RainDropEffect [0/1/2]
0: force off
1: on (default)
2: on (forced)

variable: bot_show 
type: int
current: 0
help: show bot status

variable: bot_type 
type: string
current: 
help: bot type

variable: r_ShadowGen 
type: int
current: 1
help: 0=disable shadow map updates, 1=enable shadow map updates

variable: ai_DrawFakeTracers DUMPTODISK
type: int
current: 0
help: Draws fake tracers around the player.

variable: net_tcp_nodelay 
type: int
current: 0
help: Use tcp_nodelay option for socket

variable: e_VoxTerTexRangeScale 
type: float
current: 1
help: Debug

variable: option_shadow_dist 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_shadow_dist [1/2/3/4/x]:
 ... e_gsm_cache = 0		; I'm not sure e_gsm_cache ever worked because e_gsm_cache_lod_offset was set to a high value/0		; I'm not sure e_gsm_cache ever worked because e_gsm_cache_lod_offset was set to a high value/0		; I'm not sure e_gsm_cache ever worked because e_gsm_cache_lod_offset was set to a high value/0		; I'm not sure e_gsm_cache ever worked because e_gsm_cache_lod_offset was set to a high value/0		; I'm not sure e_gsm_cache ever worked because e_gsm_cache_lod_offset was set to a high value
 ... e_gsm_extra_range_shadow = 0/0/1/1/1
 ... e_gsm_extra_range_shadow_texture_size = 256/512/1024/2048/2048
 ... e_gsm_extra_range_sun_update_ratio = 0/0/0/0/0
 ... e_gsm_extra_range_sun_update_time = 0/0/0/0/0
 ... e_gsm_extra_range_sun_update_type = 0/0/0/0/0
 ... e_gsm_lods_num = 2/3/3/4/4
 ... e_gsm_range_rate = 20/8/18/20/20
 ... e_gsm_range_start = 5/10/4/3/3
 ... e_gsm_range_step = 5/2/4/3.5/3.5
 ... e_gsm_range_step_object = .25/.25/3/3/3
 ... e_gsm_range_step_terrain = .25/.25/2.25/1.5/1.5
 ... e_shadows_max_texture_size = 512/1024/1024/2048/2048
 ... e_shadows_on_alpha_blended = 0/0/1/1/1
 ... e_shadows_terrain = 0/0/1/1/1
 ... e_shadows_terrain_texture_size = 256/512/1024/2048/2048
 ... r_DynTexMaxSize = 48/64/80/128/128
 ... r_ShadowBlur = 0/0/3/3/3
 ... r_ShadowsDeferOmniLightLimit = 2/4/4/6/6
 ... r_ShadowsMaskResolution = 0/0/0/0/0
 ... r_ShadowsOmniLightLimit = 2/4/4/6/6


variable: i_iceeffects 
type: int
current: 0
help: Enable/Disable specific weapon effects for ice environments

variable: e_cbuffer_tree_debug 
type: int
current: 0
help: Debug

variable: e_cbuffer_tree_depth 
type: int
current: 7
help: Debug

variable: r_ShadowGenMode 
type: int
current: 1
help: 0=Use Frustums Mask
1=Regenerate all sides
Usage: r_ShadowGenMode [0/1]


variable: r_ShadowsParticleJitterAmount DUMPTODISK
type: float
current: 0.5
help: Amount of jittering for particles shadows.
Usage: r_ShadowsParticleJitterAmount [x], 0.5 is default

variable: bot_password 
type: string
current: 
help: bot password

variable: ca_test_profile_shot 
type: int
current: 0
help: just test for profile shot

variable: profile_pagefaults 
type: int
current: 0
help: Enable drawing of page faults graph.


variable: um_debug_exact_aabb 
type: int
current: 0
help: render exact AABB

variable: g_ignore_duel_invite 
type: int
current: 0
help: 0(accept duel invite), 1(ignore duel invite)

variable: tab_targeting_round_dist 
type: float
current: 4
help: 

variable: p_jump_to_profile_ent 
type: int
current: 0
help: Move the local player next to the corresponding entity in the p_profile_entities list

variable: s_MaxMIDIChannels DUMPTODISK
type: int
current: 8
help: Sets the maximum number of midi sound channels.
Default is 16.

variable: g_die_anim_force 
type: float
current: 1000
help: 

variable: ca_UsePhysics 
type: int
current: 1
help: the physics is not applied (effectively, no IK)

variable: e_custom_max_model_low 
type: int
current: 50
help: max custom model count low level

variable: e_custom_max_model_mid 
type: int
current: 80
help: max custom model count mid level

variable: ca_DrawTangents 
type: int
current: 0
help: draws the tangents of the rendered character

variable: sys_movie_update_position 
type: int
current: 1
help: 0 : before prephysics update, 1 : after prephysics (default)

variable: simulate_actor_push_hack 
type: int
current: 0
help: Turn on/off actor push hack simulation. 0: off, n: on. And the number means a pusher unit id

variable: p_max_contact_gap 
type: float
current: 0.01
help: Sets the gap, enforced whenever possible, between
contacting physical objects.Usage: p_max_contact_gap 0.01
This variable is used for internal tweaking only.

variable: e_particles_dynamic_quality 
type: int
current: 1
help: change particle quality in runtime

variable: ai_DebugPathfinding 
type: int
current: 0
help: Toggles output of pathfinding information [default 0 is off]


variable: e_DecalsPlacementTestAreaSize 
type: float
current: 0.22
help: Avoid spawning decals on the corners or edges of entity geometry

variable: ai_SteepSlopeAcrossValue 
type: float
current: 0.6
help: Indicates slope value that is borderline-walkable across.
Usage: ai_SteepSlopeAcrossValue 0.8
Default is 0.6 Zero means flat. Infinity means vertical. Set it greater than ai_SteepSlopeUpValue


variable: p_net_angsnapmul 
type: float
current: 0.01
help: Multiplier to expand the p_net_minsnapdot based on the objects angular velocity

variable: s_RecordConfig DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 0
help: Sets up the preferred record configuration.
Usage: s_RecordConfig #
where # is a number from 0 to x representing
 0: AutoDetect (Control Panel Setting)
 x: The index of a listed record driver
Default is 0 (AutoDetect).

variable: e_particles_quality 
type: int
current: 4
help: Current particles detail quality

variable: mov_effect 
type: int
current: 1
help: (0 = off, 1 = on)

variable: check_custom_texture_lod_gap 
type: float
current: 3
help: 

variable: g_ignore_squad_invite 
type: int
current: 0
help: 0(accept squad invite), 1(ignore squad invite)

variable: ca_gc_duration 
type: int
current: 60000
help: 

variable: r_ShadowsSunMaskBlurriness 
type: float
current: 2
help: Specifies the amount of bluring to apply to the sun shadow mask. Set to 0 for no blurring. Typically 1-2 are the best values.

variable: sound_character_listener 
type: int
current: 1
help: character listener(1)/camera listener(0)

variable: g_unit_collide_bottom_box_min_height_size_gap 
type: float
current: 0.4
help: 

variable: instance_id 
type: int
current: 0
help: Instance Id

variable: r_WaterCaustics 
type: int
current: 1
help: Toggles under water caustics.
Usage: r_WaterCaustics [0/1]
Default is 1 (enabled).

variable: p_debug_joints 
type: int
current: 0
help: If set, breakable objects will log tensions at the weakest spots

variable: ca_LoadUncompressedChunks 
type: int
current: 0
help: If this 1, then uncompressed chunks prefer compressed while loading

variable: e_terrain_occlusion_culling_version 
type: int
current: 1
help: 0 - old, 1 - new

variable: um_vehicle_ground_align 
type: int
current: 1
help: vehicle unit model ground aligning. 0(off), 1>(on), 2(debug)

variable: capture_file_format 
type: string
current: jpg
help: Specifies file format of captured files (jpg, bmp, tga, hdr).

variable: ai_IncludeNonColEntitiesInNavigation 
type: int
current: 1
help: Includes/Excludes noncolliding objects from navigation.

variable: ban_timeout DUMPTODISK
type: int
current: 30
help: Ban timeout in minutes

variable: r_MotionBlur 
type: int
current: 0
help: Enables per object and screen motion blur.
Usage: r_MotionBlur [0/1/2/3/4/101/102/103/104]
Default is 1 (screen motion blur on). 1 enables screen motion blur. 2 enables screen and object motion blur. 3 all motion blur and freezing. 4. only per object; modes above 100 also enable motion blur in multiplayer


variable: ca_DrawCGAAsSkin 
type: int
current: 0
help: if this is 1, will draw the CGA characters using skin (dp calls decreased)

variable: ai_DebugDrawAmbientFire DUMPTODISK
type: int
current: 0
help: Displays fire quota on puppets.

variable: r_UseParticlesRefraction 
type: int
current: 1
help: Enables refractive particles.
Usage: r_UseParticlesRefraction [0/1]


variable: movement_verify_airstanding_height_tolerance 
type: float
current: 5
help: 

variable: r_BeamsSoftClip 
type: int
current: 1
help: Toggles light beams clip type.
Usage: r_BeamsSoftClip [0/1]
Default is 1 (software clip beams). Set to 0 to enable hardware clipping.

variable: ac_clampTimeEntity 
type: float
current: 0.3
help: Time it takes for carry clamping to reduce the deviation to zero.

variable: skip_ag_update 
type: int
current: 1
help: Skip update animation graph in server : skip_ag_update [0(off)|1(on)]
default: 1 (on)

variable: sv_gs_trackstats 
type: int
current: 1
help: Enable Gamespy stats tracking

variable: rope_skill_controller_jump_velocity 
type: float
current: 8
help: 

variable: aux_phys_max_unit_num 
type: int
current: 10
help: 

variable: net_highlatencytimelimit 
type: float
current: 1.5
help: 

variable: r_ShowLight 
type: string
current: 0
help: Display a light source by name.
Usage: r_ShowLight lightname
Default is 0. Set to 'lightname' to show only the light
from the source named 'lightname'.

variable: r_ShowLines 
type: int
current: 0
help: Toggles visibility of wireframe overlay.
Usage: r_ShowLines [0/1]Default is 0 (off).

variable: ca_FacialSequenceMaxCount 
type: int
current: 20
help: Set Max Count of Facial animation loaded

variable: ds_LoadExcelScripts 
type: int
current: 1
help: Load legacy Excel based dialogs.

variable: option_animation 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_animation [1/2/3/4/x]:
 ... ca_LodClampThreshold = 4/5/6/7/7
 ... ca_LodDistRatio = 1.5/1/0.7/0.5/0.5
 ... ca_LodRadiusInflection = 2.5/2.5/2.5/2.5/2.5
 ... ca_LodSkipTaskRatio = 2/1/0.7/0.5/0.5
 ... ca_UnloadAnimTime = 60/60/60/60/60
 ... ca_dbh_level = 1/2/3/3/3


variable: e_custom_clone_mode 
type: int
current: 0
help: use clone for custom units on/off

variable: ac_debugAnimTarget 
type: int
current: 0
help: Display debug history graphs of anim target correction.

variable: sv_servername DUMPTODISK
type: string
current: 
help: Server name will be displayed in server list. If empty, machine name will be used.

variable: r_CoronaSizeScale 
type: float
current: 1
help: 

variable: net_phys_debug 
type: int
current: 0
help: 

variable: ca_LodRadiusInflection 
type: float
current: 2.5
help: 

variable: r_TextureLodDistanceRatio 
type: float
current: -1
help: Controls dynamic LOD system for textures used in materials.
Usage: r_TextureLodDistanceRatio [-1, 0 and bigger]
Default is -1 (completely off). Value 0 will set full LOD to all textures used in frame.
Values bigger than 0 will activate texture LOD selection depending on distance to the objects.

variable: follow_debug 
type: int
current: 0
help: 

variable: s_FileOpenHandleMax 
type: int
current: 30
help: Sets max of open file handles.
Usage: s_FileOpenHandleMax [1..]
Default PC: 30, PS3: 10.

variable: lua_gc_mul 
type: int
current: 110
help: change LUA_GCSETSTEPMUL

variable: e_model_decals 
type: int
current: 1
help: Activates drawing of model decals (game decals and hand-placed)

variable: e_foliage_stiffness 
type: float
current: 3.2
help: Stiffness of the spongy obstruct geometry

variable: s_MusicVolume DUMPTODISK
type: float
current: 0.700001
help: Sets the music volume from 0 to 1 in the games option.
Usage: s_MusicVolume 0.2
Default is 1.0

variable: ca_LockFeetWithIK 
type: int
current: 1
help: If this is set to 1, then we lock the feet to prevent sliding when additive animations are used

variable: fr_fspeed_scale DUMPTODISK
type: float
current: 3
help: free camera fast move speed scale

variable: ai_ObstacleSizeThreshold DUMPTODISK
type: float
current: 1.2
help: Obstacle size in meters that differentiates small obstacles from big ones so that vehicles can ignore the small ones

variable: e_shadows 
type: int
current: 1
help: Activates drawing of shadows

variable: e_dynamic_light_force_deferred 
type: int
current: 0
help: dynamic light force deferred

variable: s_ReverbType REQUIRE_APP_RESTART
type: int
current: 2
help: Toggles type of reverb effect.
Usage: s_ReverbType [0..2]
Default PC: 2, Xbox360: 2, PS3: 2, Durango: 2, Orbis: 1
0: Disables reverb completely.
1: Enables SW I3DL2 reverb with dynamic buffer allocation at run time.
2: Enables SW I3DL2 reverb with full buffer allocation during initialization.

variable: gm_startup 
type: int
current: 1
help: 0 : off, 1 : on

variable: ca_DrawBinormals 
type: int
current: 0
help: draws the binormals of the rendered character

variable: s_SoundMoodsDSP 
type: int
current: 1
help: enables DSP effects being used in soundmoods.
Usage: s_SoundMoodsDSP [0/1]
Default is 1 (on).

variable: e_timedemo_frames 
type: int
current: 0
help: Will quit appication in X number of frames, r_DisplayInfo must be also enabled

variable: e_modelview_Prefab_camera_offset_x 
type: float
current: 0
help: x modelview Prefab camera offset (in world space)

variable: e_modelview_Prefab_camera_offset_y 
type: float
current: 0
help: y modelview Prefab camera offset (in world space)

variable: e_modelview_Prefab_camera_offset_z 
type: float
current: 0
help: z modelview Prefab camera offset (in world space)

variable: basic_cursor_shape 
type: int
current: 0
help: basic cursor shape

variable: s_AudioPreloadsFile 
type: string
current: audiopreloads_64
help: Sets the file name for the AudioFileCacheManager to parse.
Usage: s_AudioPreloadsFile <file name without extension>
Default: AudioPreloads


variable: s_MemoryPoolSoundPrimary REQUIRE_APP_RESTART
type: float
current: 30
help: Sets the size in MB of the primary sound memory pool. This memory is always located in main memory.
Usage: s_MemoryPoolSoundPrimary [0..]
0:			<auto>, PC:60, PS3:12, X360:28
Default is 0 <auto>.

variable: lua_handle 
type: int
current: 0
help: change script handle.
0 : System
1 : UI
1 : GlobalUI
Usage: lua_handle [0/1/2]


variable: ca_modelViewLog 
type: int
current: 0
help: modelview rendering log

variable: e_max_view_dst_spec_lerp 
type: float
current: 1
help: 1 - use max view distance set by designer for very high spec
0 - for very low spec
Values between 0 and 1 - will lerp between high and low spec max view distances

variable: show_aim_point 
type: int
current: 0
help: Show aim points

variable: ai_DebugDrawVegetationCollisionDist DUMPTODISK
type: int
current: 0
help: Enables drawing vegetation collision closer than a distance projected onto the terrain.

variable: e_gsm_terrain_sun_update_time 
type: float
current: 5
help: SunDir update gap for terrain range shadow

variable: e_roads 
type: int
current: 1
help: Activates drawing of road objects

variable: e_ropes 
type: int
current: 1
help: Turn Rendering of Ropes on/off

variable: ai_DebugDrawDynamicHideObjectsRange DUMPTODISK
type: int
current: 0
help: Sets the range for drawing dynamic hide objects around the player (needs ai_DebugDraw > 0).

variable: e_sleep 
type: int
current: 0
help: Sleep X in C3DEngine::Draw

variable: custom_zoom_sensitivity 
type: float
current: 1.5
help: 

variable: ca_DrawFaceAttachments 
type: int
current: 1
help: if this is 0, will not draw the skin attachments objects

variable: e_voxel 
type: int
current: 1
help: Render voxels

variable: e_stat_obj_merge 
type: float
current: 1
help: Enable CGF sub-objects meshes merging

variable: sound_mood_combat_enable 
type: int
current: 1
help: 1: on / 0: off

variable: e_particles_lod 
type: float
current: 1
help: Multiplier to particle count

variable: e_particles_low 
type: float
current: 180
help: particle lod low

variable: e_CameraFreeze 
type: int
current: 0
help: Freeze 3dengine camera (good to debug object culling and LOD).
The view frustum is drawn in write frame.
 0 = off
 1 = activated

variable: ac_clampTimeAnimation 
type: float
current: 0.3
help: Time it takes for carry clamping to reduce the deviation to zero.

variable: pl_flyingVelocityMultiplier 
type: float
current: 30
help: 

variable: name_tag_font_name 
type: string
current: font_main
help: set unit name tag font name

variable: d3d9_debugruntime 
type: int
current: 0
help: 

variable: name_tag_font_size 
type: int
current: 17
help: set unit name tag font size

variable: e_default_material 
type: float
current: 0
help: use gray illum as default

variable: option_show_combat_resource_window 
type: int
current: 0
help: option_show_combat_resource_window

variable: movement_verify_move_speed_big_enough_vel 
type: float
current: 40
help: 

variable: ag_ep_correctMovement 
type: int
current: 1
help: enable/disable position correction in exact positioning

variable: r_ShadowsAdaptionMin DUMPTODISK
type: float
current: 0
help: starting kernel size, to avoid blocky shadows.
Usage: r_ShadowsAdaptionMin [0.0 for blocky - 1.0 for blury], 0.35 is default

variable: r_PostProcessEffectsParamsBlending 
type: int
current: 1
help: Enables post processing effects parameters smooth blending
Usage: r_PostProcessEffectsParamsBlending [0/1]
Default is 1 (enabled).

variable: sub_zone_debug 
type: int
current: 0
help: 

variable: cl_voice_recording 
type: int
current: 0
help: Enable client voice recording

variable: e_StreamPredictionMinFarZoneDistance 
type: float
current: 16
help: Debug

variable: ea_show 
type: int
current: 0
help: show effect area

variable: log_IncludeMemory 
type: int
current: 0
help: 

variable: ca_DrawPositionPost 
type: int
current: 0
help: draws the world position of the character (after update)

variable: r_VarianceShadowMapBlurAmount DUMPTODISK
type: float
current: 1
help: Activate shadow map blur.
Usage: r_VarianceShadowMapBlurAmount [0=deactivate, >0 to specify blur amount (1=normal)]


variable: e_AutoPrecacheCgf 
type: int
current: 1
help: Force auto pre-cache of CGF render meshes. 1=pre-cache all mehes around camera. 2=pre-cache only important ones (twice faster)

variable: r_shootingstar_respawntime 
type: float
current: 3
help: Respawn time of the shooting star (in game hours).

variable: e_cbuffer_terrain_distance 
type: float
current: 100
help: Only near sectors are rasterized

variable: r_DetailTextures DUMPTODISK
type: int
current: 1
help: Toggles detail texture overlays.
Usage: r_DetailTextures [0/1]
Default is 1 (detail textures on).

variable: v_altitudeLimit 
type: float
current: 600
help: Used to restrict the helicopter and VTOL movement from going higher than a set altitude. If set to zero, the altitude limit is disabled.

variable: p_max_debris_mass 
type: float
current: 10
help: Broken pieces with mass<=this limit use debris collision settings

variable: option_enable_misc_chat_log DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 0
help: enable misc chat log. default is 0.

variable: r_binaryShaderAutoGen REQUIRE_APP_RESTART
type: int
current: 0
help: binaryShaderAutoGen

variable: r_UseSRGB REQUIRE_APP_RESTART
type: int
current: 1
help: Enables sRGB texture reads / framebuffer writes.
Usage: r_UseSRGB [0=off/1=lighting is computed in linear space]

variable: cl_invertMouse DUMPTODISK
type: int
current: 0
help: mouse invert?

variable: OceanWindSpeed 
type: float
current: 4
help: ocean wind speed

variable: ca_UseFacialAnimation 
type: int
current: 1
help: If this is set to 1, we can play facial animations

variable: s_VehcleMusicVolume DUMPTODISK
type: float
current: 1
help: Sets the percentile volume of the vehicle music.
Usage: s_vehcleMusicVolume 1.0
Default is 1, which is full volume.

variable: e_decals_allow_game_decals 
type: int
current: 1
help: Allows creation of decals by game (like weapon bullets marks)

variable: e_zoneWeatherEffect 
type: int
current: 1
help: Active zone effect

variable: e_proc_vegetation_max_view_distance 
type: int
current: 128
help: Debug

variable: p_max_world_step 
type: float
current: 0.2
help: Specifies the maximum step physical world can make (larger steps will be truncated)

variable: r_silhouetteColorAmount 
type: float
current: 2
help: silhouette Color Amount

variable: ca_LoadDatabase 
type: int
current: 0
help: Enable loading animations from database

variable: e_screenshot_map_far_plane_offset 
type: float
current: 1000
help: param for far plane offset

variable: v_rockBoats 
type: int
current: 1
help: Enable/disable boats idle rocking

variable: cl_zone_id 
type: int
current: -1
help: 

variable: r_NoDrawShaders 
type: int
current: 0
help: Disable entire render pipeline.
Usage: r_NoDrawShaders [0/1]
Default is 0 (render pipeline enabled). Used for debugging and profiling.


variable: capture_folder 
type: string
current: CaptureOutput
help: Specifies sub folder to write captured frames.

variable: name_tag_mark_size_ratio 
type: float
current: 1
help: name tag mark scale

variable: mfx_MaxFootStepCount 
type: int
current: 50
help: Max foot_step count, Default : 50 

variable: p_use_distance_contacts 
type: int
current: 0
help: Allows to use distance-based contacts (is forced off in multiplayer)

variable: capture_frames 
type: int
current: 0
help: Enables capturing of frames.

variable: v_debugMountedWeapon 
type: int
current: 0
help: Enable/disable vehicle mounted weapon camera debug draw

variable: cr_sensitivity 
type: float
current: 20
help: 

variable: swim_side_speed_mul 
type: float
current: 0.6
help: Swimming sideways speed mul.

variable: r_texturesstreamingPostponeThresholdKB 
type: int
current: 1024
help: Threshold used to postpone high resolution mipmap loads in KB.
Usage: r_TexturesStreamingPostponeThresholdKB [size]
Default is 1024(KB)

variable: r_NVSSAO_PowerExponent 
type: float
current: 4
help: The final AO output is pow(AO, powerExponent). /n

variable: e_sky_box 
type: int
current: 1
help: Activates drawing of skybox and moving cloud layers

variable: p_time_granularity 
type: float
current: 0.0001
help: Sets physical time step granularity.
Usage: p_time_granularity [0..0.1]
Used for internal tweaking only.

variable: sound_target_skill_sound_volume 
type: float
current: 0.8
help: target = player. [0.0 - 1.0]

variable: dump_lua_in_loading 
type: int
current: 1
help: 

variable: cl_account_id 
type: string
current: 1
help: Account ID string for authenticated client

variable: r_MultiThreadFlush 
type: int
current: 0
help: force flush render thread

variable: e_cbuffer_terrain_lod_ratio 
type: float
current: 4
help: Terrain lod ratio for mesh rendered into cbuffer

variable: ca_FacialAnimationFramerate 
type: int
current: 20
help: Update facial system at a maximum framerate of n. This framerate falls off linearly to zero with the distance.

variable: s_MusicSpeakerFrontVolume DUMPTODISK
type: float
current: 1
help: Sets the volume of the front speakers.
Usage: s_MusicSpeakerFrontVolume 1.0Default is 1.0.

variable: ca_DrawLookIK 
type: int
current: 0
help: draws a visualization of look ik

variable: ac_debugXXXValues 
type: int
current: 0
help: Display some values temporarily hooked into temp history graphs.

variable: r_NVSSAO_DetailAO 
type: float
current: 0.6
help: Scale factor for the detail AO, the greater the darker. from 0.0 to 1.0. 


variable: mfx_pfx_maxScale 
type: float
current: 1.5
help: Max scale (when particle is far)

variable: e_detail_materials 
type: int
current: 1
help: Activates drawing of detail materials on terrain ground

variable: swim_back_speed_mul 
type: float
current: 0.8
help: Swimming backwards speed mul.

variable: e_lod_min_tris 
type: int
current: 300
help: LODs with less triangles will not be used

variable: swim_up_speed_mul 
type: float
current: 0.7
help: Swimming up speed mul.

variable: ai_drawBeautifyPath DUMPTODISK
type: float
current: 0
help: If enabled, you can see beautify path info

variable: movement_verify_move_speed_report_critical_point 
type: float
current: 1.5
help: 

variable: r_texturesstreamingPostponeMips 
type: int
current: 0
help: Postpone loading of high res mipmaps to improve resolution ballance of texture streaming.
Usage: r_TexturesStreamingPostponeMips [0/1]
Default is 0 (off).

variable: p_rwi_queue_debug 
type: int
current: 0
help: 

variable: ca_lipsync_phoneme_crossfade 
type: int
current: 70
help: Cross fade time between phonemes in milliseconds

variable: r_ShadersAsyncCompiling 
type: int
current: 2
help: Enable asynchronous shader compiling
Usage: r_ShadersAsyncCompiling [0/1]
 0 = off, (stalling) shadering compiling
 1 = on, shaders are compiled in parallel, missing shaders are rendered in yellow
 2 = on, shaders are compiled in parallel, missing shaders are not rendered


variable: time_of_day_sync 
type: int
current: 1
help: 

variable: e_materials 
type: int
current: 1
help: Activates material support for non animated objects

variable: r_HDREyeAdaptionCache DUMPTODISK
type: int
current: 4
help: Enable/Disable eye adaptation caching overframes
Usage: r_HDREyeAdaptionCache [value]
Default is 4. 0 - always update, 1 - every other frame, 2 - every two frames, etc

variable: r_enableAuxGeom REQUIRE_APP_RESTART
type: int
current: 1
help: Enables aux geometry rendering.

variable: s_MPEGDecoders REQUIRE_APP_RESTART
type: int
current: 32
help: Sets maximum number of MPEG Decoder.
Usage: s_MPEGDecoders 16
0:			<auto>, PC:32, PS3:32, X360:0
Default is 0 <auto>.

variable: r_NVDOF_Test_Mode 
type: int
current: 0
help: Enables / disables nvidia depth of field test mode.
Usage: r_NVDOF_Test_Mode [0/1]
0 disable(default). 1 enables.


variable: r_ColorGradingChartsCache 
type: int
current: 4
help: Enables color grading charts update caching.
Usage: r_ColorGradingCharts [0/1/2/etc]
Default is 4 (update every 4 frames), 0 - always update, 1- update every other frame

variable: hr_rotateTime 
type: float
current: 0.07
help: rotate time

variable: r_DeferredShadingDepthBoundsTest 
type: int
current: 1
help: Toggles deferred shading depth bounds test.
Usage: r_DeferredShadingDepthBoundsTest [0/1]
Default is 1 (enabled). 0 Disables. 

variable: e_dynamic_light_consistent_sort_order 
type: int
current: 1
help: Debug

variable: r_sunshafts 
type: int
current: 1
help: Enables sun shafts.
Usage: r_sunshafts [0/1]
Default is 1 (on). Set to 0 to disable.

variable: p_max_unproj_vel 
type: float
current: 2.5
help: Limits the maximum unprojection velocity request

variable: p_pod_life_time 
type: float
current: 8
help: How long POD(Physicalized On Demand. Vegetation) will keep alive

variable: g_roundtime 
type: float
current: 2
help: Duration of a round (in minutes). Default is 0, 0 means no time-limit.

variable: es_MinImpulseVel 
type: float
current: 0
help: 
Usage: es_MinImpulseVel 0.0


variable: ca_physicsProcessImpact DUMPTODISK
type: int
current: 0
help: Process physics impact pulses.

variable: r_DeferredShadingDebug 
type: int
current: 0
help: Toggles deferred shading debug.
Usage: r_DeferredShadingDebug [0/1]
  0 disabled (Default)
  1 skip lights rendering (but still do cpu work)
  2 only 1 light
  3 Fillrate debug (brighter colors means more expensive)

variable: r_ShadersCacheOptimiseLog 
type: int
current: 0
help: 

variable: e_modelview_Prefab_init_rot_x_for_flat_objects 
type: float
current: -45
help: modelview prefab initial rotation x value for flat objects

variable: camera_limit_fadeout_distance 
type: float
current: 3
help: 

variable: e_water_tesselation_amount 
type: int
current: 10
help: Set tesselation amount

variable: g_customizer_stream_cutscene 
type: int
current: 1
help: enable customizer streaming in cutscene

variable: g_unit_collide_bottom_box_height_size_rate 
type: float
current: 0.2
help: 

variable: e_GIAmount 
type: float
current: 0.1
help: Multiplier for brightness of the global illumination. Default: 25.0 times brighter (temporary)

variable: r_DeferredShadingTiled DUMPTODISK
type: int
current: 0
help: 

variable: ai_DynamicTriangularUpdateTime 
type: float
current: 0.002
help: How long (max) to spend updating triangular waypoint regions per AI update (in sec)
0 disables dynamic updates. 0.002 is a sensible value


variable: es_SplashTimeout 
type: float
current: 3
help: minimum time interval between consecutive splashesUsage: es_SplashTimeout 3.0


variable: movement_verify_detailed_warp_speed_pretty_fast 
type: float
current: 100
help: 

variable: r_DynTexAtlasSpritesMaxSize 
type: int
current: 64
help: 

variable: e_force_detail_level_for_resolution 
type: int
current: 0
help: Force sprite distance and other values used for some specific screen resolution, 0 means current

variable: option_anti_aliasing 
type: int
current: 1
help: Console variable group to apply settings to multiple variables

option_anti_aliasing [1/2/3/4/5/6/7/8/9/10/11/12/13/x]:
 ... r_Fxaa = 0/1/2/0/0/0/0/0/0/0/0/0/0/0
 ... r_MSAA = 0/0/0/0/1/1/1/1/1/1/1/1/1/0
 ... r_MSAA_quality = 0/0/0/0/0/0/0/8/8/16/16/0/0/0
 ... r_MSAA_samples = 0/0/0/0/2/4/8/4/8/4/8/2/4/0
 ... r_MotionBlur = 0/0/0/0/0/0/0/0/0/0/0/0/0/0
 ... r_PostAA = 0/0/0/1/0/0/0/0/0/0/0/0/0/0
 ... r_PostAAEdgeFilter = 0/0/0/2/0/0/0/0/0/0/0/0/0/0
 ... r_TXAA = 0/0/0/0/0/0/0/0/0/0/0/1/1/0
 ... r_UseEdgeAA = 0/0/0/0/0/0/0/0/0/0/0/0/0/0


variable: r_VegetationSpritesNoBend 
type: int
current: 2
help: 

variable: r_MultiThreaded DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 1
help: 0=disabled, 1=enabling rendering in separate thread,
2(default)=automatic detection
should be activated before rendering

variable: ai_DrawNodeLinkCutoff 
type: float
current: 0
help: Sets the link cutoff value in ai_DrawNodeLinkType. If the link value is more than ai_DrawNodeLinkCutoff the number gets displayed in green, otherwise red.

variable: e_cbuffer_occluders_test_min_tris_num 
type: int
current: 0
help: Debug

variable: s_SoundEnable DUMPTODISK
type: int
current: 1
help: Toggles sound on and off.
Usage: s_SoundEnable [0/1]
Default is 1 (on). Set to 0 to disable sound.

variable: e_max_entity_lights 
type: int
current: 16
help: Set maximum number of lights affecting object

variable: net_actor_controller_debug_filter 
type: int
current: 0
help: 

variable: log_FileMergeTime 
type: int
current: 500
help: flush log file for every ms

variable: p_net_smoothtime 
type: float
current: 5
help: How much time should non-snapped positions take to synchronize completely?

variable: s_CinemaVolume DUMPTODISK
type: float
current: 0.700001
help: Sets the percentile volume of the cinema sound.
Usage: s_CinemaVolume 0.7
Default is 1, which is full volume.

variable: ai_DrawRefPoints DUMPTODISK
type: string
current: 
help: Toggles reference points view for debugging AI.
Usage: ai_DrawRefPoints [0/1]
Default is 0 (off). Indicates the AI reference points by drawing
cyan balls at their positions.

variable: con_char_size 
type: int
current: 14
help: 

variable: cl_motionBlur 
type: float
current: 2
help: motion blur type (0=off, 1=accumulation-based, 2=velocity-based)

variable: movement_hack_report_debug 
type: int
current: 0
help: 

variable: camera_damping_default 
type: int
current: 0
help: 

variable: r_SSReflections 
type: int
current: 0
help: Toggles screen space reflections

variable: r_MotionBlurFrameTimeScale 
type: int
current: 0
help: Enables motion blur.frame time scaling - visually nicer on lower frame rates
Usage: r_MotionBlurFrameTimeScale [0/1]

variable: sv_bind REQUIRE_LEVEL_RELOAD
type: string
current: 0.0.0.0
help: Bind the server to a specific IP address

variable: sv_port DUMPTODISK
type: int
current: 64100
help: Server address

variable: e_vegetation_wind 
type: int
current: 0
help: Activates vegetation with wind support

variable: ai_ExtraVehicleAvoidanceRadiusSmall DUMPTODISK
type: float
current: 0.5
help: Value in meters to be added to a big obstacle's own size while computing obstacle size for purposes of vehicle steering.See also ai_ObstacleSizeThreshold.

variable: bot_tempory_dump_size 
type: int
current: 10240
help: Kbyte

variable: g_goForceFastUpdate 
type: int
current: 0
help: GameObjects IsProbablyVisible->TRUE && IsProbablyDistant()->FALSE

variable: world_widget_mouse_up_threshold_time 
type: int
current: 250
help: threshold time for mouse down to mouse up position

variable: movement_verify_move_speed_max_climbing_vel 
type: float
current: 3
help: 

variable: r_refraction 
type: int
current: 1
help: Enables refraction.
Usage: r_refraction [0/1]
Default is 1 (on). Set to 0 to disable.

variable: e_gsm_range_step_object 
type: float
current: 3
help: Extra range shadow step value

variable: cd_stream_view_dist_ratio 
type: int
current: 50
help: 

variable: r_CSTest 
type: int
current: 0
help: 0 - Disabled.
1 - Enabled.


variable: ca_DoPrecacheAnim 
type: int
current: 1
help: Enables the precaching anim set during startup. Set in system.cfg, because used during initialisation.

variable: picking_debug 
type: int
current: 0
help: debug picking

variable: e_StreamPredictionAhead 
type: float
current: 0.5
help: Use preducted camera position for streaming priority updates

variable: cloth_max_timestep 
type: float
current: 0
help: 

variable: r_PostProcessOptimize 
type: int
current: 2
help: Enables post processing Optimize.
Usage: r_PostProcessOptimize [0/1]


variable: r_WaterGodRays 
type: int
current: 1
help: Enables under water god rays.
Usage: r_WaterGodRays [0/1]
Default is 1 (enabled).

variable: ShowBuffDuration 
type: int
current: 1
help: show buff duration in unit frame, party frame

variable: r_OceanHeightScale 
type: int
current: 4
help: 

variable: es_DebugFindEntity 
type: int
current: 0
help: 

variable: g_breaktimeoutframes 
type: int
current: 140
help: 

variable: movement_verify_gravity_error_tolerance 
type: float
current: 0.4
help: 

variable: g_enableIdleCheck 
type: int
current: 1
help: 

variable: OceanWavesSpeed 
type: float
current: 1
help: wave speed

variable: modifier_show 
type: int
current: 0
help: show modifiers. 1: self skill, 2: self buff

variable: r_Driver DUMPTODISK, REQUIRE_APP_RESTART
type: string
current: DX9
help: Sets the renderer driver ( OpenGL/DX9/DX10/AUTO/NULL ). Default is DX10 on Vista and DX9 otherwise.
Specify in system.cfg like this: r_Driver = "DX10"

variable: movement_verify_ignore_msec_after_skill_controller 
type: int
current: 2000
help: 

variable: ca_lipsync_debug 
type: int
current: 0
help: Enables facial animation debug draw

variable: s_Doppler DUMPTODISK
type: int
current: 1
help: Toggles Doppler effect on and off.
Usage: s_Doppler [0/1]
Default is 1 (on).

variable: r_DrawNearZRange 
type: float
current: 0
help: Default is 0.1.

variable: cl_shadow DUMPTODISK
type: string
current: 
help: Client password shadow for single mode

variable: r_SSAO_amount_multipler 
type: float
current: 2
help: Controls how much SSAO affects ambient for far

variable: hs_foundation_radius 
type: int
current: 100
help: 

variable: es_Stream 
type: int
current: 1
help: 

variable: r_GlitterSize 
type: float
current: 1
help: Sets glitter sprite size.
Usage: r_GlitterSize n (default is 1)
Where n represents a number: eg: 0.5

variable: pl_zeroGSwitchableGyro 
type: int
current: 0
help: MERGE/REVERT

variable: ca_useAttachmentItemEffect 
type: int
current: 1
help: 

variable: ca_stream_debug 
type: int
current: 0
help: 

variable: e_lowspec_mode 
type: int
current: 0
help: Enables lowspec mode

variable: r_TexturesStreamingDontKeepSystemMode 
type: int
current: 1
help: 0 oldmode. 1 new mode. default 1

variable: g_custom_texture_mipmap_min_size 
type: int
current: 16
help: 

variable: e_ObjectsTreeBBoxes 
type: int
current: 0
help: Debug draw of object tree bboxes. 1(node box), 2(objects box)

variable: r_NVDOF_InFocusRange 
type: float
current: 0.2
help: Controls the range in which objects appear fully in focus. When set to 0, only an infinitely thin plane at the focus distance is in focus.
When set to some value up to 1, the volume around the focus distance will appear perfectly in focus. 
For example, .2 means 20% of the focus range is fully in focus.


variable: name_tag_hp_show 
type: int
current: 1
help: name tag hp show

variable: r_ParticleVertHeapSize 
type: int
current: 5242880
help: 

variable: ai_DebugDrawVolumeVoxels DUMPTODISK
type: int
current: 0
help: Toggles the AI debugging drawing of voxels in volume generation.
Usage: ai_DebugDrawVolumeVoxels [0, 1, 2 etc]
Default is 0 (off)
+n draws all voxels with original value >= n-n draws all voxels with original value =  n

variable: sys_main_CPU 
type: int
current: 0
help: Specifies the physical CPU index main will run on

variable: name_tag_shadow_alpha 
type: float
current: 0.4
help: name tag shadow alpha

variable: ca_RandomScaling 
type: int
current: 0
help: If this is set to 1, then we apply ransom scaling to characters

variable: e_sun_angle_snap_dot 
type: float
current: 1
help: Sun dir snap control

variable: e_sun_angle_snap_sec 
type: float
current: 0
help: Sun dir snap control

variable: name_tag_shadow_delta 
type: float
current: 1
help: name tag shadow delta

variable: cl_tpvYaw 
type: float
current: 0
help: camera angle offset in 3rd person view

variable: r_HDRRendering DUMPTODISK
type: int
current: 3
help: Toggles HDR rendering.
Usage: r_HDRRendering [0,3]
Default is 3 (on). Set to 0 to disable HDR rendering.

variable: ds_PrecacheSounds 
type: int
current: 0
help: Precache sounds on Dialog Begin

variable: skill_detail_damage_show_tooltip 
type: int
current: 0
help: skill detail damage shows tooltip

variable: sv_voicecodec REQUIRE_LEVEL_RELOAD
type: string
current: speex
help: 

variable: ai_DebugDraw DUMPTODISK
type: int
current: 0
help: Toggles the AI debugging view.
Usage: ai_DebugDraw [0/1]
Default is 0 (off). ai_DebugDraw displays AI rays and targets 
and enables the view for other AI debugging tools.

variable: r_DeferredShadingDBTstencil DUMPTODISK
type: int
current: 1
help: Toggles deferred shading combined depth bounds test + stencil test.
Usage: r_DeferredShadingDBTstencil [0/1]
Default is 1 (enabled). 0 Disables. 

variable: pl_zeroGAimResponsiveness 
type: float
current: 8
help: ZeroG aim responsiveness vs. inertia (default is 8.0).

variable: ac_debugPrediction 
type: int
current: 0
help: Display graph of motion parameters.

variable: r_Flares DUMPTODISK
type: int
current: 1
help: Toggles sunlight lens flare effect.
Usage: r_Flares [0/1]
Default is 1 (on).

variable: option_optimization_enable 
type: int
current: 0
help: optimization enable

variable: e_voxel_make_shadows 
type: int
current: 0
help: Calculate per vertex shadows

variable: r_DetailScale 
type: float
current: 8
help: Sets the default scaling for detail overlays.
Usage: r_DetailScale 8
Default is 8. This scale applies only if the object's
detail scale was not previously defined (in MAX).

variable: ai_DirectPathMode DUMPTODISK
type: int
current: 0
help: 0 = Normal, 1 = skip direct path test, 2 = If no direct path, never go

variable: sys_WER 
type: int
current: 0
help: Enables Windows Error Reporting

variable: auto_attack_rotation 
type: int
current: 1
help: auto attack rotation mode ( 0:first time, 1:always, 2:don't rotate )

variable: option_view_dist_ratio_vegetation 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_view_dist_ratio_vegetation [1/2/3/4/x]:
 ... e_ProcVegetationMaxObjectsInChunk = 256/512/512/2048/2048
 ... e_proc_vegetation = 1/1/1/1/1
 ... e_proc_vegetation_min_density = 2/1/1/0.5/0.5
 ... e_vegetation_bending = 1/2/2/2/2
 ... e_vegetation_min_size = 1.0/0.5/0/0/0
 ... e_vegetation_sprites_distance_custom_ratio_min = 0.01/0.01/0.01/0.01/0.01
 ... e_vegetation_sprites_distance_ratio = 0.5/0.6/0.7/0.8/0.8
 ... e_view_dist_ratio_vegetation = 30/40/50/60/60


variable: ca_DBAUnloadUnregisterTime 
type: int
current: 2
help: DBA Unload Timing: CAF Unregister Time.

variable: e_shadows_clouds 
type: int
current: 0
help: Cloud shadows

variable: r_WaterCausticsDistance 
type: float
current: 100
help: Toggles under water caustics max distance.
Usage: r_WaterCausticsDistance
Default is 100.0 meters

variable: cl_user_key 
type: string
current: 
help: pod user key

variable: e_detail_materials_debug 
type: int
current: 0
help: Shows number of materials in use per terrain sector

variable: s_X2CullingByDistance 
type: int
current: 0
help: allow early culling by distance.
Usage: s_CullingByX2Distance [0/1]
Default is 0 (off).

variable: bot_profile_period 
type: int
current: 60000
help: in ms.

variable: map_show_return_points 
type: int
current: 0
help: show return points in world map (0 : off, 1 : on)

variable: sys_budget_dp_terrain_detail_3d 
type: float
current: 200
help: 

variable: p_max_plane_contacts 
type: int
current: 8
help: Maximum number of contacts lying in one plane between two rigid bodies
(the system tries to remove the least important contacts to get to this value)

variable: e_particles_veryhigh 
type: float
current: 40
help: particle lod very high

variable: um_plane_shadow 
type: int
current: 0
help: use plane shadow for Actor

variable: movement_verify_detailed_warp_dist_pretty_far 
type: float
current: 25
help: 

variable: pl_zeroGParticleTrail 
type: int
current: 0
help: Enable particle trail when in zerog.

variable: hr_dotAngle 
type: float
current: 0.75
help: max angle for FOV change

variable: e_xml_cache_gc 
type: int
current: 1000
help: GC duration of xml cache

variable: net_actor_controller_smooth_time 
type: float
current: 0.1
help: 

variable: r_VegetationSpritesTexRes 
type: int
current: 128
help: 

variable: con_char_scale 
type: float
current: 0.5
help: 

variable: r_ShadowsDeferOmniLightLimit 
type: int
current: 6
help: Sets a limit to the maximum number of deferred omni lights that can be casting a shadow at the same time. Set to 0 to disable.

variable: r_dyntexatlasdyntexsrcsize 
type: int
current: 0
help: 

variable: g_die_anim_Degree 
type: float
current: 35
help: 

variable: movement_verify_enable 
type: int
current: 0
help: 

variable: bot_restart_dealy_time 
type: int
current: 15
help: restart delay (sec)

variable: d3d9_TripleBuffering REQUIRE_APP_RESTART
type: int
current: 0
help: 

variable: pl_zeroGDashEnergyConsumption 
type: float
current: 0.25
help: Percentage consumed when doing a dash in ZeroG.

variable: r_Height DUMPTODISK
type: int
current: 1080
help: Sets the display height, in pixels. Default is 768.
Usage: r_Height [600/768/..]

variable: fr_xturn DUMPTODISK
type: float
current: 60
help: free camera x turn(yaw) speed

variable: fr_yturn DUMPTODISK
type: float
current: 60
help: free camera y turn(pitch) speed

variable: ca_UnloadAnimationCAF DUMPTODISK
type: int
current: 1
help: unloading streamed CAFs as soon as they are not used

variable: ca_UnloadAnimationDBA 
type: int
current: 1
help: if 1, then unload DBA if not used

variable: g_breakage_particles_limit 
type: int
current: 250
help: Imposes a limit on particles generated during 2d surfaces breaking

variable: p_unproj_vel_scale 
type: float
current: 10
help: Requested unprojection velocity is set equal to penetration depth multiplied by this number

variable: r_HDRBrightOffset DUMPTODISK
type: float
current: 5
help: HDR rendering bright offset.
Usage: r_HDRBrightOffset [Value]
Default is 6.0f

variable: hs_ignore_build_available_time RESTRICTEDMODE
type: int
current: 0
help: ignore build-available-time

variable: e_terrain_occlusion_culling_precision_dist_ratio 
type: float
current: 3
help: Controlls density of rays depending on distance to the object

variable: e_face_reset_debug 
type: int
current: 0
help: set bit, for face reset debug. each bit mean, 1=eye 2=nose 4=mouth 8=shape 32=ear

variable: player_debug_name 
type: string
current: player
help: the name to use in player_debug_state: default is player

variable: es_DrawAreas 
type: int
current: 0
help: Enables drawing of Areas

variable: next_r_Driver DUMPTODISK, REQUIRE_APP_RESTART
type: string
current: DX9
help: r_Driver's back up variable

variable: r_WaterUpdateTimeMax DUMPTODISK
type: float
current: 0.1
help: Maximum update time for water reflection texture (that occurs at 100m above the level of water), in seconds.
Note that the update time can be higher when the camera is higher than 100m, and the update time is limited to max. 0.3 sec (that is ~3 FPS).
Usage: r_WaterUpdateTimeMax 0.1
Range is [0.0, 1.0], Default is 0.1.

variable: r_WaterUpdateTimeMin DUMPTODISK
type: float
current: 0.01
help: Minimum update time of water reflection texture (that occurs at the level of water), in seconds.
Usage: r_WaterUpdateTimeMin 0.01
Range is [0.0, 1.0], Default is 0.01.

variable: e_cbuffer_debug_freeze 
type: int
current: 0
help: Freezes viewmatrix/-frustum 

variable: e_wind_areas 
type: int
current: 1
help: Debug

variable: cl_voice_volume 
type: float
current: 1
help: Set VOIP playback volume: 0-1

variable: e_precache_level 
type: int
current: 1
help: Pre-render objects right after level loading

variable: ca_LodCount 
type: int
current: -1
help: 

variable: map_show_sub_zone_area 
type: int
current: 0
help: show sub zone area in world map (0 : off, 1 : on)

variable: ca_LodDist0 
type: float
current: 15
help: 

variable: r_ShadowsDepthBoundNV 
type: int
current: 0
help: 1=use NV Depth Bound extension
Usage: CV_r_ShadowsDepthBoundNV [0/1]


variable: s_MusicProfiling 
type: int
current: 0
help: Toggles profiling of music calls.
Usage: s_MusicProfiling [0/1]
Default is 0 (off).

variable: profile_graphScale 
type: float
current: 100
help: Sets the scale of profiling histograms.
Usage: profileGraphScale 100


variable: r_shadersdontflush 
type: int
current: 0
help: Set to 1 to disable writing shaders to disk. Note that this will means shaders will have to recompiled
every time you start the game (because the compiled version will never be committed to disk).

variable: e_particles_normal_update_dist 
type: float
current: 70
help: particle normal update dist

variable: ai_RadiusForAutoForbidden 
type: float
current: 1000
help: If object/vegetation radius is more than this then an automatic forbidden area is created during triangulation.

variable: e_CoverageBufferAABBExpand 
type: float
current: 0.007
help: expanding the AABB's of the objects to test to avoid z-fighting issues in the Coverage buffer

variable: sv_lanonly DUMPTODISK
type: int
current: 0
help: Set for LAN games

variable: name_tag_friendly_show 
type: int
current: 1
help: render name tag of party unit

variable: s_LoadNonBlocking 
type: int
current: 1
help: Toggles loading data non-blocking.
Usage: s_LoadNonBlocking [0/1]
Default is 1.

variable: s_SpamFilterTimeout 
type: float
current: 5
help: Sets the time in sec for entries in spam filter to time out.
Usage: s_SpamFilterTimeout 0 means spam filter is disables
Usage: s_SpamFilterTimeout [0..]
Default is 5 (on).

variable: e_particles_debug 
type: int
current: 0
help: Particle debug flags:
 1 = show basic stats
 f+ = show fill rate stats
 r+ = show reuse/reject stats
 b+ = draw bounding boxes and labels
 s+ = log emitter and particle counts by effect (for 1 frame)
 d+ = show emitter and particle counts to screen
 e+ = log particle system timing info (for 1 frame)
 t+ = log particle texture usage
 z+ = freeze particle system
 c+ = show particle container LOD info(UpdateParticles)

variable: e_terrain_texture_sync_load 
type: int
current: 0
help: Debug

variable: e_obj_tree_max_node_size 
type: int
current: 0
help: Debug draw of object tree bboxes

variable: hs_debugdraw RESTRICTEDMODE
type: int
current: 0
help: shows debugging informations for housing

variable: r_TerrainSpecular_AccurateFresnel 
type: int
current: 1
help: Set to 1 for Schlick fresnel approximation, or 0 for basic fresnel.

variable: name_tag_expeditionfamily 
type: int
current: 1
help: render name tag expedition or family

variable: e_deferred_cell_loader_log 
type: int
current: 0
help: Debug

variable: g_debug_psychokinesis 
type: int
current: 0
help: 0 : off, 1 : on

variable: r_HDRBlueShift DUMPTODISK
type: float
current: 0
help: HDR rendering blue shift.
Usage: r_HDRBlueShift 0 to 1
Default is 0 (disabled). Set to 1 to use max blue shift strength

variable: net_voice_proximity 
type: float
current: 0
help: 

variable: ShowChatBubble 
type: int
current: 1
help: show chat bubble

variable: r_DeferredShadingLightLodRatio 
type: float
current: 1
help: Sets deferred shading light intensity threshold for PS3.
Usage: r_DeferredShadingLightLodRatio [value]
Default is 0.1

variable: camera_fov_on_16by9_screen 
type: float
current: 0.95
help: fov on 16:9 screen ratio

variable: ca_logDrawnActors 
type: int
current: 0
help: log all drawn actors

variable: e_particles_stats 
type: int
current: 0
help: Show Particle Statistics

variable: s_MIDIVolume DUMPTODISK
type: float
current: 1
help: Sets the percentile volume of the MIDI sound.
Usage: s_MIDIVolume 1.0
Default is 1, which is full volume.

variable: raise_exception 
type: int
current: 0
help: raise exception

variable: e_dissolve_transition_time 
type: float
current: 0.3
help: Lod switch duration

variable: e_decals_update_silhouette_scope 
type: int
current: 0
help: 0 - unit&doodad, 1 - unit only, 2 - doodad only

variable: name_tag_bottom_margin_on_bgmode 
type: float
current: 0.3
help: nametag bottom margin on bgmode

variable: e_StatObjTestOBB 
type: int
current: 0
help: Use additinal OBB check for culling

variable: e_water_volumes 
type: int
current: 1
help: Activates drawing of water volumes

variable: r_TexLogNonStream 
type: int
current: 1
help: Logging loading of non-stream textures.
Usage:	r_TexLogNonStream [0/1]
When 1 logging is enabled.

variable: cloth_max_safe_step 
type: float
current: 0
help: if a segment stretches more than this (in *relative* units), its length is reinforced

variable: fr_speed_scale DUMPTODISK
type: float
current: 1
help: free camera move speed scale

variable: s_FormatSampleRate REQUIRE_APP_RESTART
type: int
current: 44100
help: Sets the output sample rate.
Usage: s_FormatSampleRate 44100
Default is 48000. Sets the rate, in samples per second,
at which the output of the sound system is played.

variable: p_tick_breakable 
type: float
current: 0.1
help: Sets the breakable objects structure update interval

variable: r_ShadowsAdaptionSize DUMPTODISK
type: float
current: 40
help: Select shadow map blurriness if r_ShadowsBias is activated.
Usage: r_ShadowsAdaptoinSize [0 for none - 10 for rapidly changing]

variable: e_statobj_stats 
type: int
current: 0
help: Debug

variable: e_terrain_occlusion_culling_step_size_delta 
type: float
current: 1.05
help: Step size scale on every next step (for version 1)

variable: bot_zone_id 
type: int
current: -1
help: bot zone id

variable: ai_EnableWarningsErrors DUMPTODISK
type: int
current: 1
help: Enable AI warnings and errors: 1 or 0

variable: ai_DebugDrawCollisionEvents DUMPTODISK
type: int
current: 0
help: Debug draw the collision events the AI system processes. 0=disable, 1=enable.

variable: r_TexturesFilteringQuality REQUIRE_LEVEL_RELOAD
type: int
current: 0
help: Configures texture filtering adjusting.
Usage: r_TexturesFilteringQuality [#]
where # represents:
	0: Highest quality
	1: Medium quality
	2: Low quality


variable: r_WaterReflectionsMGPU DUMPTODISK
type: int
current: 1
help: Toggles water reflections.multi-gpu support
Usage: r_WaterReflectionsMGPU [0/1/2]
Default is 0 (single render update), 1 (multiple render updates)

variable: g_hide_tutorial 
type: int
current: 0
help: 0(show tutorial), 1(hide tutorial)

variable: p_lattice_max_iters 
type: int
current: 100000
help: Limits the number of iterations of lattice tension solver

variable: e_proc_vegetation 
type: int
current: 1
help: Show procedurally distributed vegetation

variable: sys_budget_video_memory 
type: float
current: 512
help: 

variable: camera_smooth_fadeout 
type: float
current: 0.06
help: 

variable: cloth_air_resistance 
type: float
current: 0
help: "advanced" (more correct) version of damping

variable: g_ignore_raid_invite 
type: int
current: 0
help: 0(accept raid invite), 1(ignore raid invite)

variable: cr_mouseRotateSpeedMax 
type: float
current: 10
help: 

variable: i_lighteffects DUMPTODISK
type: int
current: 1
help: Enable/Disable lights spawned during item effects.

variable: mfx_pfx_maxDist 
type: float
current: 35
help: Max dist (how far away before scale is clamped)

variable: sys_physics_CPU 
type: int
current: 1
help: turn on/off physics thread

variable: ca_DebugFootPlants DUMPTODISK
type: int
current: 0
help: if this is 1, it will print some debug text on the screen

variable: custom_fov 
type: float
current: 60
help: fov, the value will used when camera mode is custom.

variable: r_NVSSAO_FogDistance 
type: float
current: 4000
help: The distance at which the AO falls off to half strength./n

variable: data_mining_file_open 
type: int
current: 0
help: 

variable: ai_DebugDrawHidespotRange DUMPTODISK
type: int
current: 0
help: Sets the range for drawing hidespots around the player (needs ai_DebugDraw > 0).

variable: r_TexBindMode 
type: int
current: 0
help: 

variable: s_SoundMoods 
type: int
current: 1
help: Controls using sound moods for mixing.
Usage: s_SoundMoods [0/1]
Default is 1 (on).

variable: r_TextureCompressor DUMPTODISK
type: int
current: 1
help: Defines which texture compressor is used (fallback is DirectX)
Usage: r_TextureCompressor [0/1]
0 uses nvDXT, 1 uses Squish if possible

variable: ac_animErrorMaxAngle 
type: float
current: 45
help: Degrees animation orientation is allowed to stray from entity.

variable: e_mixed_normals_report 
type: int
current: 0
help: mixed normals report

variable: s_GameDialogVolume 
type: float
current: 0.200001
help: Controls the dialog volume for game use.
Usage: s_GameDialogVolume 0.5
Default is 1, which is full volume.

variable: ai_DebugDrawLightLevel DUMPTODISK
type: int
current: 0
help: Debug AI light level manager

variable: cursor_size 
type: int
current: 0
help: cursor size

variable: r_EyeAdaptationBase 
type: float
current: 0.18
help: HDR rendering eye adaptation base value (smaller values result in brighter adaption)
Usage: r_EyeAdaptationBase [Value]


variable: r_ColorGradingDof 
type: int
current: 1
help: Enables color grading dof control.
Usage: r_ColorGradingDof [0/1]


variable: e_decals_deffered_dynamic 
type: int
current: 0
help: 1 - make all game play decals deferred, 2 - make all game play decals non deferred

variable: ai_EnableUnbending DUMPTODISK
type: int
current: 1
help: If enabled, unbending part of BeautifyPath works

variable: r_CloudsUpdateAlways 
type: int
current: 0
help: Toggles updating of clouds each frame.
Usage: r_CloudsUpdateAlways [0/1]
Default is 0 (off.

variable: next_r_MultiThreaded DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 1
help: r_MultiThreaded's back up variable

variable: r_ShadersRemoteCompiler DUMPTODISK
type: int
current: 0
help: 

variable: r_deferredDecalsDebug 
type: int
current: 0
help: Display decals debug info.
Usage: r_deferredDecalsDebug [0/1]

variable: r_TexturesStreamingDebugMinSize 
type: int
current: 100
help: Filters displayed textures by size in texture streaming debug mode

variable: r_texturesstreamingMinMipmap 
type: int
current: 0
help: (null)

variable: s_MemoryPoolSoundSecondaryRatio 
type: float
current: 0.7
help: Controls at what fill ratio sound data is unloaded.
Usage: s_MemoryPoolSoundSecondaryRatio [0..1]
Default is 0.7.

variable: show_raid_command_message 
type: int
current: 1
help: show raid command message

variable: s_NoFocusVolume 
type: float
current: 0
help: Allows for overriding the application's master volume when the window lost focus.
Usage: s_NoFocusVolume [0...1]
Default is 0 (total silence on no focus).


variable: r_TerrainSpecular_Roughness 
type: float
current: 0.6
help: 'Roughness' parameter for Cook-Torrence specular model.

variable: r_silhouetteQuality 
type: int
current: 1
help: silhouette Quality 3=high 2=middle 1=low

variable: cl_gs_nick 
type: string
current: 
help: Nickname for Gamespy login

variable: name_tag_faction_selection 
type: int
current: 1
help: name tag faction selection

variable: i_mouse_smooth DUMPTODISK
type: float
current: 0
help: Set mouse smoothing value, also if 0 (disabled) there will be a simple average between the old and the actual input.
Usage: i_mouse_smooth [float number] (1.0 = very very smooth, 30 = almost istant)
Default is 0.0

variable: e_custom_max_model_high 
type: int
current: 100
help: max custom model count high level

variable: r_ShadersLazyUnload 
type: int
current: 0
help: 

variable: s_FindLostEvents 
type: int
current: 0
help: Toggles to find and stop lost events to prevent them from endlessly looping.
Default is 0 (off).
1: finds and stops lost events.
Usage: s_FindLostEvents [0/1].

variable: ca_DrawCGA 
type: int
current: 1
help: if this is 0, will not draw the CGA characters

variable: ca_DrawCHR 
type: int
current: 1
help: if this is 0, will not draw the CHR characters

variable: v_debugSounds 
type: int
current: 0
help: Enable/disable vehicle sound debug drawing

variable: ca_DBAUnloadRemoveTime 
type: int
current: 4
help: DBA Unload Timing: DBA Remove Time.

variable: fire_action_on_button_down 
type: int
current: 1
help: 

variable: r_NVSSAO_FogEnable 
type: int
current: 0
help: To make the AO fall off with the view depth. [0/1]/n

variable: r_SSAO_depth_range 
type: float
current: 0.99999
help: Use depth test to avoid SSAO computations on sky, 0 = disabled

variable: es_MaxImpulseAdjMass 
type: float
current: 2000
help: 
Usage: es_MaxImpulseAdjMass 2000.0


variable: ai_ExtraVehicleAvoidanceRadiusBig DUMPTODISK
type: float
current: 4
help: Value in meters to be added to a big obstacle's own size while computing obstacle size for purposes of vehicle steering.See also ai_ObstacleSizeThreshold.

variable: ai_InterestScalingEyeCatching DUMPTODISK
type: float
current: 14
help: Scale the interest value given to Eye Catching interest items (e.g. moving vehicles, birds, people)

variable: ca_DrawAttachmentRadius 
type: int
current: 0
help: if this is 0, will not draw the attachments objects

variable: ShowTargetCastingBar 
type: int
current: 1
help: show target castring bar

variable: p_max_LCPCG_contacts 
type: int
current: 100
help: Maximum number of contacts that LCPCG solver is allowed to handle

variable: name_tag_fixed_size_mode 
type: int
current: 0
help: name tag fixed size mode

variable: e_stat_obj_merge_max_tris_per_drawcall 
type: float
current: 500
help: Skip merging of meshes already having acceptable number of triangles per draw call

variable: r_ShadersUseInstanceLookUpTable 
type: int
current: 0
help: Use lookup table to search for shader instances. Speeds up the process, but uses more memory. Handy for shader generation.

variable: r_NightVisionBrightLevel 
type: float
current: 3
help: Set nightvision bloom brightlevel.


variable: r_NVSSAO 
type: int
current: 0
help: NVidia's horizon based ambient occlusion method [0/1/2]
0 - Disabled
1 - Performance Mode
2 - Quality Mode (**best)


variable: es_not_seen_timeout DUMPTODISK
type: int
current: 30
help: number of seconds after which to cleanup temporary render buffers in entity

variable: ui_draw_quest_type 
type: int
current: 0
help: draw quest id

variable: ca_get_op_from_key 
type: int
current: 0
help: 

variable: ai_StatsTarget DUMPTODISK
type: string
current: none
help: Focus debugging information on a specific AI
Usage: ai_StatsTarget AIName
Default is 'none'. AIName is the name of the AI
on which to focus.

variable: option_use_shadow 
type: int
current: 1
help: Console variable group to apply settings to multiple variables

option_use_shadow [0/1/x]:
 ... e_shadows = 0/1/1


variable: r_RainAmount 
type: float
current: 1
help: Sets rain amount
Usage: r_RainAmount

variable: e_on_demand_physics 
type: int
current: 1
help: Turns on on-demand vegetation physicalization

variable: ai_DynamicWaypointUpdateCount DUMPTODISK
type: int
current: 10000
help: How many times dynamic waypoint connection check work for a second?

variable: r_PostAAEdgeFilter 
type: int
current: 0
help: Enables morphological edge antialiasing algorithm.
Usage: r_PostAAEdgeFilter [0/1]. 0: disabled, 1: SMAA t2x, 2: SMAA 2x

variable: option_texture_bg 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_texture_bg [1/2/3/4/x]:
 ... e_terrain_texture_buffers = 192/320/448/640/640
 ... e_terrain_texture_lod_ratio = 3/2/1.5/1/1
 ... r_DynTexAtlasCloudsMaxSize = 1/8/8/32/32
 ... r_DynTexAtlasSpritesMaxSize = 8/8/16/64/64
 ... r_EnvCMResolution = 0/1/2/2/2
 ... r_EnvTexResolution = 1/2/3/3/3
 ... r_ImposterRatio = 2/1.5/1/1/1
 ... r_TexAtlasSize = 512/1024/1024/2048/2048
 ... r_TexBumpResolution = 2/1/0/0/0
 ... r_TexMinAnisotropy = 1/4/8/16/16
 ... r_TexResolution = 2/1/0/0/0
 ... r_TexResolution_Conditional = 1/0/0/0/0
 ... r_TexturesStreamPoolSize = 128/1024/1024/1024/1024
 ... r_TexturesStreamSystemPoolSize = 128/1024/1024/1024/1024
 ... r_TexturesStreaming = 1/1/1/1/1
 ... r_VegetationSpritesTexRes = 64/64/64/128/128
 ... r_texture_db_streaming = 1/1/1/1/1


variable: ca_LodSkipTaskRatio 
type: float
current: 0.5
help: 

variable: e_GIOffset 
type: float
current: 0.2
help: Offset of GI in front of camera in percents[0;1]. Default: 0.4 Min: 0 Max: 1

variable: mfx_RaisedSoundImpactThresh 
type: float
current: 3.5
help: Impact threshold for sound effects if we're rolling. Default: 3.5

variable: e_custom_max_model 
type: int
current: 3
help: max custom model

variable: um_debug 
type: int
current: 0
help: [1 or unit id]

variable: ca_useBoneLOD 
type: int
current: 1
help: 

variable: e_screenshot_map_size_x 
type: float
current: 1024
help: param for the size in worldunits of area to make map screenshot, see e_screenshot_map
defines the x position of the bottom right corner of the screenshot-area on the terrain,
0.0 - 1.0 (1.0 is default)

variable: e_screenshot_map_size_y 
type: float
current: 1024
help: param for the size in worldunits of area to make map screenshot, see e_screenshot_map
defines the x position of the bottom right corner of the screenshot-area on the terrain,
0.0 - 1.0 (1.0 is default)

variable: p_min_separation_speed 
type: float
current: 0.02
help: Used a threshold in some places (namely, to determine when a particle
goes to rest, and a sliding condition in microcontact solver)

variable: p_max_entity_cells 
type: int
current: 300000
help: Limits the number of entity grid cells an entity can occupy

variable: effect_max_fx 
type: int
current: 200
help: max skill effect group count

variable: s_ObstructionAccuracy 
type: int
current: 1
help: Toggles maximum obstruction effect.
Usage: s_ObstructionAccuracy [1..5]
1:		 test Direct
2:		 also test left side
3:		 also test right side
4:		 also test up
5:		 also test down
Default is 1 (for now)

variable: r_PostProcessEffects 
type: int
current: 1
help: Enables post processing special effects.
Usage: r_PostProcessEffects [0/1/2]
Default is 1 (enabled). 2 enables and displays active effects

variable: ai_DebugDrawSoundEvents DUMPTODISK
type: int
current: 0
help: Debug draw the sound events the AI system processes. 0=disable, 1=enable.

variable: g_use_physicalize_rigid 
type: int
current: 1
help: 0 : off, 1 : on

variable: s_HDRLoudnessMaxFalloff DUMPTODISK
type: float
current: 0.3
help: Maximum loudness falloff due to distance, e.g something of loudness 0.8 can only ever be as quiet as 0.5 due to HDR
Usage: s_HDRLoudnessFalloffMax [0..1]Default is 0.3f

variable: s_OffscreenEnable 
type: int
current: 0
help: Enables update of the 'offscreen_angle' parameter on sound events.
Usage: s_OffscreenEnable [0/1]
Default is 0 (off).

variable: hr_fovTime 
type: float
current: 0.05
help: fov time

variable: r_SSAO_contrast 
type: float
current: 1
help: SSAO contrast coefficient (higher contrast highlights edges)

variable: swim_jump_speed 
type: float
current: 12
help: jump height at surface (meter) 
default: 4.0

variable: e_gsm_extra_range_sun_update_time 
type: float
current: 0
help: SunDir update gap for extra range shadow

variable: e_gsm_extra_range_sun_update_type 
type: int
current: 0
help: SunDir update type

variable: r_PostAA 
type: int
current: 0
help: Enables amortized super sampling.
Usage: r_PostAA [0/1]1: 2x SSAA, 0: disabled

variable: net_input_trace 
type: string
current: 0
help: trace an entities input processing to assist finding sync errors

variable: ui_disable_caption DUMPTODISK
type: int
current: 0
help: disable cutscene caption
 0: enable caption
 1: disable caption


variable: r_UseCompactHDRFormat 
type: int
current: 1
help: Usage: r_UseCompactHDRFormat 1 
0 off (default)
1 using 32bit float format

variable: locale_setting 
type: int
current: 0
help: Console variable group to apply settings to multiple variables

locale_setting [0/x]:
 ... name_tag_font_size = 17/17


variable: over_head_marker_height 
type: float
current: 50
help: overhead marker height

variable: um_ship_speed_rate_smooth_time 
type: float
current: 0.5
help: 

variable: e_char_debug_draw 
type: int
current: 0
help: apply e_debug_draw just char and skin instance

variable: r_DisplayInfoGraph RESTRICTEDMODE
type: int
current: 0
help: 0: off, 1 : simple, 2 : enhanced

variable: s_X2CullingDistanceRatio 
type: float
current: 0.5
help: culling distance ratio.
Usage: s_CullingByX2SoundPriorityRatio [0..1]
Default is 0.5 (50% of max channels).

variable: fg_noDebugText 
type: int
current: 0
help: Don't show debug text [0/1]
Default is 0 (show debug text).

variable: doodad_crater_debug 
type: int
current: 0
help: 

variable: r_TexturesStreamingMaxRequestedMB 
type: float
current: 0.5
help: Maximum amount of texture data requested from streaming system in MB.
Usage: r_TexturesStreamingMaxRequestedMB [size]
Default is 2.0(MB)

variable: camera_use_fx_cam_fov 
type: int
current: 1
help: [0,1] off, on

variable: e_cbuffer_lazy_test 
type: int
current: 1
help: Dont test visible objects every frame

variable: e_recursion 
type: int
current: 1
help: If 0 - will skip recursive render calls like render into texture

variable: um_picking_sphere_max_scale_dist 
type: float
current: 50
help: 

variable: option_custom_addon_ui DUMPTODISK
type: int
current: 0
help: Enable/Disable addon custom ui

variable: can_survey_in_future 
type: int
current: 0
help: can survey in future, 0: unuse, 1: use

variable: ag_log 
type: int
current: 0
help: Enable a log of animation graph decisions

variable: r_TexturesStreamingMaxRequestedJobs 
type: int
current: 256
help: Maximum number of tasks submitted to streaming system.
Usage: r_TexturesStreamingMaxRequestedJobs [jobs number]
Default is 256 jobs

variable: ai_DrawPathAdjustment DUMPTODISK
type: string
current: none
help: Draws the path adjustment for the AI agents.
Usage: ai_DrawPathAdjustment [name]
Default is none (nobody).

variable: bot_restart_after_crash 
type: int
current: 0
help: restart after crash

variable: sv_requireinputdevice DUMPTODISK, REQUIRE_LEVEL_RELOAD
type: string
current: dontcare
help: Which input devices to require at connection (dontcare, none, gamepad, keyboard)

variable: r_usesilhouette 
type: int
current: 0
help: Use silhouette

variable: sv_maxspectators DUMPTODISK
type: int
current: 32
help: Maximum number of players allowed to be spectators during the game.

variable: r_DeferredShadingTiledRatio DUMPTODISK
type: float
current: 0
help: 

variable: ai_DebugDrawCrowdControl 
type: int
current: 0
help: Draws crowd control debug information. 0=off, 1=on

variable: p_accuracy_LCPCG 
type: float
current: 0.005
help: Desired accuracy of LCP CG solver (velocity-related, m/s)

variable: e_material_no_load 
type: int
current: 0
help: 

variable: e_particles_min_draw_pixels 
type: float
current: 1
help: Pixel size cutoff for rendering particles -- fade out earlier

variable: i_soundeffects DUMPTODISK
type: int
current: 1
help: Enable/Disable playing item sound effects.

variable: ai_DrawAreas DUMPTODISK
type: int
current: 0
help: Enables/Disables drawing behavior related areas.

variable: p_max_approx_caps 
type: int
current: 7
help: Maximum number of capsule approximation levels for breakable trees

variable: r_Contrast DUMPTODISK
type: float
current: 0.5
help: Sets the diplay contrast.
Usage: r_Contrast 0.5
Default is 0.5.

variable: net_actor_controller_interpolate_method 
type: int
current: 3
help: 0 : simple correction, 1 : smooth cd correction, 2 : queued interpolation, 3 : step interpolation

variable: r_EyeAdaptationLocal 
type: int
current: 0
help: HDR rendering eye adaptation local
Usage: 0==off 1==4x4 2==16x16 3==256x256

variable: q_ShaderGlass REQUIRE_APP_RESTART
type: int
current: 3
help: Defines the shader quality of Glass
Usage: q_ShaderGlass 0=low/1=med/2=high/3=very high (default)

variable: ai_DrawGoals DUMPTODISK
type: int
current: 0
help: Draws all the active goal ops debug info.
Usage: ai_DrawGoals [0/1]
Default is 0 (off). Set to 1 to draw the AI goal op debug info.

variable: ai_DrawGroup DUMPTODISK
type: int
current: -2
help: draw groups: positive value - group ID to draw; -1 - all groups; -2 - nothing


variable: ai_DrawTrajectory DUMPTODISK
type: int
current: 0
help: Records and draws the trajectory of the stats target: 0=do not record, 1=record.

variable: ca_UseAllJoints 
type: int
current: 1
help: if set to 1, then have no Animation-LOD (debugging feature for animation LOD)

variable: q_ShaderFX REQUIRE_APP_RESTART
type: int
current: 3
help: Defines the shader quality of FX
Usage: q_ShaderFX 0=low/1=med/2=high/3=very high (default)

variable: r_EyeAdaptationSpeed DUMPTODISK
type: float
current: 2
help: HDR rendering eye adaptation speed
Usage: r_EyeAdaptionMax [Value]
Default is 2

variable: q_ShaderMetal REQUIRE_APP_RESTART
type: int
current: 3
help: Defines the shader quality of Metal
Usage: q_ShaderMetal 0=low/1=med/2=high/3=very high (default)

variable: r_HDRVignetting DUMPTODISK
type: int
current: 0
help: HDR viggneting
Usage: r_HDRVignetting [Value]
Default is 1 (enabled)

variable: r_TexMaxAnisotropy REQUIRE_LEVEL_RELOAD
type: int
current: 16
help: 

variable: s_MaxEventCount 
type: int
current: 7000
help: Max event count.


variable: ai_DrawRadar DUMPTODISK
type: int
current: 0
help: Draws AI radar: 0=no radar, >0 = size of the radar on screen

variable: r_ShadowsDeferredMode 
type: int
current: 1
help: 0=Quad light bounds
1=Use light volumes
Usage: r_ShadowsDeferredMode [0/1]


variable: name_tag_friendly_mate_show 
type: int
current: 1
help: render name tag of friendly mate unit

variable: ai_DrawStats DUMPTODISK
type: int
current: 0
help: Toggles drawing stats for AI objects withing range.

variable: ac_MCMFilter 
type: int
current: 0
help: Force reinterprets Decoupled/CatchUp MCM specified by AG as Entity MCM (H/V overrides override this).

variable: q_ShaderWater REQUIRE_APP_RESTART
type: int
current: 2
help: Defines the shader quality of Water
Usage: q_ShaderWater 0=low/1=med/2=high/3=very high (default)

variable: ac_templateMCMs 
type: int
current: 1
help: Use MCMs from AG state templates instead of AG state headers.

variable: um_picking_sphere_max_scale 
type: float
current: 2
help: 

variable: option_item_mount_only_my_pet 
type: int
current: 0
help: mount only my pet

variable: r_DebugLightVolumes 
type: int
current: 0
help: 0=Disable
1=Enable
Usage: r_DebugLightVolumes[0/1]

variable: budget 
type: int
current: 0
help: bit flags
1:overall 
2:particle 
4:render 
8:sound 
-1:all

variable: r_TexturesStreamPoolIdealRatio 
type: float
current: 0.7
help: percentage of pool size to use

variable: r_TexNoLoad 
type: int
current: 0
help: Disables loading of textures.
Usage:	r_TexNoLoad [0/1]
When 1 texture loading is disabled.

variable: login_camera_zoom_delta_rate 
type: float
current: 1
help: 

variable: use_auto_regist_district 
type: int
current: 1
help: use auto regist district

variable: e_StreamPredictionMinReportDistance 
type: float
current: 0.75
help: Debug

variable: ca_SaveAABB 
type: int
current: 0
help: if the AABB is invalid, replace it by the default AABB

variable: net_rtt_convergence_factor 
type: int
current: 995
help: 

variable: ai_DebugDrawGrenadeEvents DUMPTODISK
type: int
current: 0
help: Debug draw the grenade events the AI system processes. 0=disable, 1=enable.

variable: r_WaterCausticsDeferred 
type: int
current: 1
help: Toggles under water caustics deferred pass.
Usage: r_WaterCausticsDeferred [0/1/2]
Default is 0 (disabled). 1 - enables. 2 - enables with stencil pre-pass

variable: cd_pass_garden 
type: int
current: 0
help: toggle to check if vegetation spawn position garden inside

variable: ca_AMC 
type: int
current: 1
help: enable some AMC functionality

variable: e_VoxTerRelaxation 
type: int
current: 0
help: Use X vertex relaxation passes during voxel terrain mesh generation

variable: p_event_count_debug 
type: int
current: 0
help: 

variable: r_stars_rotate 
type: int
current: 0
help: Enables rotation of the stars and the secondary moon.
[1] - The stars will rotate with the sun and primary moon.
[2] - both stars and secondary moons will rotate.


variable: ship_movement_controller_debug 
type: int
current: 0
help: 

variable: ai_UnbendingThreshold DUMPTODISK
type: float
current: 15
help: Unbending can go around zero obstacles, if connected triangles' normals aren't different more than threshold

variable: p_ray_on_grid_max_size 
type: int
current: 512
help: 

variable: name_tag_npc_show 
type: int
current: 1
help: render name tag of npc unit

variable: e_particles_lean_lifetime_test 
type: int
current: 0
help: 

variable: e_sketch_mode 
type: int
current: 0
help: Enables Sketch mode drawing

variable: s_DrawObstruction 
type: int
current: 0
help: Toggles drawing of a blue radius around the sound's position and rays casted to test obstruction.
Usage: s_DrawObstruction [0/1]
Default is 0 (off).
1: Draws the ball and casts rays to show the obstruction tests.

variable: cl_bob 
type: float
current: 1
help: view/weapon bobbing multiplier

variable: cl_fov 
type: float
current: 60
help: field of view.

variable: r_texture_db_streaming 
type: int
current: 1
help: 

variable: s_MusicCategory 
type: int
current: 1
help: Toggles adding the music sound under the music category of the eventsystem.
Usage: s_MusicCategory [0/1]
Default is 1 (on).

variable: r_FogRampScale 
type: float
current: 1
help: Scales the fog ramp distance before submitting it to the shaders (0-1). Typically adjusted linearly with view distance, it controls the ramp-off distance near the camera. Can be used when adjusting view distance.


variable: r_TexLog 
type: int
current: 0
help: Configures texture information logging.
Usage:	r_TexLog #
where # represents:
	0: Texture logging off
	1: Texture information logged to screen
	2: All loaded textures logged to 'texlog_used.txt'
	3: Missing textures logged to 'texlog_missing.txt'
	4: Keep logging 2 and 3
    5: Dump Free Pool Textures

variable: ai_BeautifyPath DUMPTODISK
type: int
current: 1
help: Toggles AI optimization of the generated path.
Usage: ai_BeautifyPath [0/1]
Default is 1 (on). Optimization is on by default. Set to 0 to
disable path optimization (AI uses non-optimized path).

variable: e_particles_landmark 
type: float
current: 1000
help: particle lod landmark

variable: camera_interaction_npc_fadeout_time 
type: float
current: 1
help: 

variable: sys_max_step 
type: float
current: 0.05
help: Specifies the maximum physics step in a separate thread

variable: r_NVSSAO_UseNormals 
type: int
current: 1
help: Enables the normal map input to the ambient occlusion calculations [0/1]
0 - don't use normals. Just build ambient occlusion from depth map.
1 - use the normal map to emulate occlusion in small facets.


variable: r_CoronaColorScale 
type: float
current: 1
help: 

variable: r_ZFightingDepthScale 
type: float
current: 0.995
help: Controls anti z-fighting measures in shaders (scaling homogeneous z).

variable: ca_AttachmentCullingRation 
type: float
current: 70
help: ration between size of attachment and distance to camera

variable: g_unit_collide_front_bound_rate 
type: float
current: 0.6
help: 

variable: tab_targeting_debug 
type: int
current: 0
help: 

variable: log_FileThread 
type: int
current: 1
help: use thread task for log-to-file

variable: con_showonload 
type: int
current: 0
help: Show console on level loading

variable: r_PostProcessEffectsReset 
type: int
current: 0
help: Enables post processing special effects reset.
Usage: r_PostProcessEffectsReset [0/1]
Default is 0 (disabled). 1 enabled

variable: ac_MCMHorNPC 
type: int
current: 1
help: Overrides the horizontal movement control method specified by AG (overrides filter).

variable: r_pointslightshafts 
type: int
current: 0
help: Enables point light shafts.
Usage: r_pointslightshafts [0/1]
Default is 1 (on). Set to 0 to disable.

variable: r_ProfileShaders 
type: int
current: 0
help: Enables display of render profiling information.
Usage: r_ProfileShaders [0/1]
Default is 0 (off). Set to 1 to display profiling
of rendered shaders.

variable: e_DissolveDistFactor 
type: float
current: 0.025
help: Factor representing the starting point for far plane dissolve. Eg, dissolve will occur over the distance given by (furtherest rendering distance * e_DissolveDistFactor), so if e_DissolveDistFactor is 0.1, then the object will start to dissolve when it is 10% away from the far plane.

variable: p_max_player_velocity 
type: float
current: 150
help: Clamps players' velocities to this value

variable: cl_check_resurrectable_pos 
type: int
current: 1
help: 

variable: party_default_accept 
type: int
current: 0
help: default response at invitation.

variable: r_DynTexMaxSize 
type: int
current: 128
help: 

variable: e_lods 
type: int
current: 1
help: Load and use LOD models for static geometry

variable: e_wind 
type: int
current: 1
help: Debug

variable: r_UsePOM 
type: int
current: 1
help: Enables Parallax Occlusion Mapping.
Usage: r_UsePOM [0/1]


variable: r_MSAA_quality DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 0
help: Quality level used when multisampled antialiasing is enabled.
Usage: r_MSAA_quality N (where N is a number >= 0). Attention, N must be supported by given video hardware!
Default: 0. Please note that various hardware implements special MSAA modes via certain combinations of
r_MSAA_quality and r_MSAA_samples. See config/MSAAProfiles*.txt for samples.

variable: skillMoving 
type: int
current: 1
help: skill moving

variable: e_allow_cvars_serialization 
type: int
current: 1
help: If set to zero - will not save cvars to cfg file

variable: s_FileCacheManagerEnable REQUIRE_APP_RESTART
type: int
current: 1
help: Enables the use of the file cache manager to cache audio data that is set in AudioPreloads.xml!
Usage: s_FileCacheManagerEnable [0/1]
0: OFF (no caching of audio data, AudioPreloads.xml is not parsed!)
Default is 1 (on).


variable: max_interaction_doodad_distance 
type: float
current: 2.1
help: offset distance (meter)

variable: option_effect 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_effect [1/2/3/4/x]:
 ... e_cull_veg_activation = 20/30/50/50/50
 ... e_foliage_wind_activation_dist = 0/10/20/25/25
 ... e_particles_lod = 1/1/1/1/1
 ... e_particles_object_collisions = 0/1/1/1/1
 ... e_particles_quality = 1/2/3/4/4
 ... e_phys_foliage = 0/0/0/0/0
 ... e_phys_ocean_cell = 0/1/0.5/0.5/0.5
 ... e_water_ocean_soft_particles = 0/1/1/1/1
 ... es_MaxPhysDist = 50/100/200/200/200
 ... es_MaxPhysDistInvisible = 10/15/25/25/25
 ... g_breakage_particles_limit = 80/130/200/250/250
 ... g_joint_breaking = 0/1/1/1/1
 ... g_tree_cut_reuse_dist = 0.7/0.35/0/0/0
 ... i_lighteffects = 0/0/1/1/1
 ... p_max_MC_iters = 4000/5000/6000/6000/6000
 ... p_max_object_splashes = 3/3/3/3/3
 ... p_max_substeps_large_group = 3/5/5/5/5
 ... p_num_bodies_large_group = 30/100/100/100/100
 ... p_splash_dist0 = 7/7/7/7/7
 ... p_splash_dist1 = 30/30/30/30/30
 ... p_splash_force0 = 10/10/10/10/10
 ... p_splash_force1 = 100/100/100/100/100
 ... p_splash_vel0 = 4.5/4.5/4.5/4.5/4.5
 ... p_splash_vel1 = 10/10/10/10/10
 ... r_UseSoftParticles = 0/1/1/1/1


variable: e_flocks_hunt 
type: int
current: 1
help: Birds will fall down...

variable: swim_buoy_speed 
type: float
current: 2
help: Swimming buoyancy speed mul.

variable: r_TexSkyQuality 
type: int
current: 0
help: 

variable: ce_debug 
type: int
current: 0
help: show debug information of environment system

variable: sys_max_fps DUMPTODISK
type: float
current: 120
help: max frame per second for prevent overheat

variable: tab_targeting_history_max 
type: int
current: 10
help: 

variable: r_UseHWSkinning 
type: int
current: 1
help: Toggles HW skinning.
Usage: r_UseHWSkinning [0/1]
Default is 1 (on). Set to 0 to disable HW-skinning.

variable: ac_debugEntityParams 
type: int
current: 0
help: Display entity params graphs

variable: camera_building_something_fadeout_vel 
type: float
current: 10
help: 

variable: ca_ShareMergedMesh 
type: int
current: 1
help: Share Merged BodyMesh

variable: cloth_stiffness_norm 
type: float
current: 0
help: stiffness for shape preservation along normals ("convexity preservation")

variable: cloth_stiffness_tang 
type: float
current: 0
help: stiffness for shape preservation against tilting

variable: cloth_friction 
type: float
current: 0
help: 

variable: keyboard_movement 
type: int
current: 1
help: A/S/D/W keyboard movement coordinates system. (0: player / 1: camera)

variable: r_ScatteringMaxDist 
type: float
current: 20
help: Sets scattering max distance

variable: ai_CloakMaxDist DUMPTODISK
type: float
current: 5
help: closer than that - cloak starts to fade out

variable: caq_debug 
type: int
current: 0
help: Show debug information for combat animation queue.

variable: profile_allthreads 
type: int
current: 0
help: Enables profiling of non-main threads.


variable: e_screenshot_map_center_x 
type: float
current: 0
help: param for the centerX position of the camera, see e_screenshot_map
defines the x position of the top left corner of the screenshot-area on the terrain,
0.0 - 1.0 (0.0 is default)

variable: e_screenshot_map_center_y 
type: float
current: 0
help: param for the centerX position of the camera, see e_screenshot_map
defines the y position of the top left corner of the screenshot-area on the terrain,
0.0 - 1.0 (0.0 is default)

variable: camera_target_ground_align 
type: int
current: 1
help: 

variable: r_ShadowGenGS DUMPTODISK
type: int
current: 0
help: Use geometry shader for shadow map generation (DX10 only, don't change at runtime)
Usage: r_ShadowGenGS [0=off, 1=on]


variable: r_Fullscreen DUMPTODISK
type: int
current: 0
help: Toggles fullscreen mode. Default is 1 in normal game and 0 in DevMode.
Usage: r_Fullscreen [0=window/1=fullscreen]


variable: ca_FaceBaseLOD DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 0
help: Base Lod Level for FaceModel

variable: loot_debug_state 
type: int
current: 0
help: Enable Loot state
usage: loot_debug_state [0(off)|1(on)]
default: 0 (off)

variable: map_show_transfer_path 
type: int
current: 0
help: show transfer path in world map (0 : off, 1 : on, 2 : carrage only, 3 : airship only, 4 : etc only)

variable: sys_warnings 
type: int
current: 0
help: Toggles printing system warnings.
Usage: sys_warnings [0/1]
Default is 0 (off).

variable: ca_FootAnchoring DUMPTODISK
type: int
current: 0
help: if this is 1, it will print some debug boxes at the feet of the character

variable: ca_DoAnimTaskPerFrame 
type: int
current: -1
help: 

variable: r_ShadowsBias DUMPTODISK
type: float
current: 8e-005
help: Select shadow map bluriness if r_ShadowsBias is activated.
Usage: r_ShadowsBias [0.1 - 16]


variable: camera_rot_max_inertia 
type: float
current: 50
help: 

variable: g_fake 
type: string
current: no
help: 

variable: quest_camera_debug 
type: int
current: 0
help: quest camera debug

variable: ca_JointVelocityMax 
type: float
current: 30
help: 

variable: swim_down_speed_mul 
type: float
current: 0.5
help: Swimming down speed mul.

variable: cb_dist_test 
type: float
current: 0
help: 

variable: ca_useAttEffectRelativeOffset 
type: int
current: 0
help: 

variable: e_profile_level_loading 
type: int
current: 2
help: Output level loading stats into log
0 = Off
1 = Output basic info about loading time per function
2 = Output full statistics including loading time and memory allocations with call stack info

variable: sound_source_combat_sound_volume 
type: float
current: 1
help: source = player. [0.0 - 1.0]

variable: movement_verify_detailed_warp_dist_far 
type: float
current: 10
help: 

variable: ddcms_time_offset 
type: int
current: 0
help: this value(minute) added to ddcms time data.

variable: att_scale_test_worn 
type: float
current: 1
help: 

variable: over_head_marker_offset 
type: float
current: 10
help: overhead marker offset height

variable: e_gsm_focus_offset_val 
type: float
current: 0
help: addtional Y-Axis offset for generate shadows

variable: r_ShadersDelayFlush 
type: int
current: 1
help: 

variable: cl_web_upload_reserved_screenshot_path 
type: string
current: 
help: recent screenshot path

variable: ai_AllTime 
type: int
current: 0
help: Displays the update times of all agents, in milliseconds.
Usage: ai_AllTime [0/1]
Default is 0 (off). Times all agents and displays the time used updating
each of them. The name is colour coded to represent the update time.
	Green: less than 1 ms (ok)
	White: 1 ms to 5 ms
	Red: more than 5 ms
You must enable ai_DebugDraw before you can use this tool.

variable: ca_UseLinkVertices 
type: int
current: 1
help: If this is set to 1, we can use link vertices

variable: ai_InterestSwitchBoost DUMPTODISK
type: float
current: 2
help: Multipler applied when we switch to an interest item; higher values maintain interest for longer (always > 1)

variable: r_RainMaxViewDist_Deferred 
type: float
current: 40
help: Sets maximum view distance (in meters) for deferred rain reflection layer
Usage: r_RainMaxViewDist_Deferred [n]

variable: r_GeomInstancing 
type: int
current: 0
help: Toggles HW geometry instancing.
Usage: r_GeomInstancing [0/1]
Default is 1 (on). Set to 0 to disable geom. instancing.

variable: r_TexBumpResolution DUMPTODISK
type: int
current: 0
help: Reduces texture resolution.
Usage: r_TexBumpResolution [0/1/2 etc]
When 0 (default) texture resolution is unaffected, 1 halves, 2 quarters etc.

variable: r_NVSSAO_BlurSharpness 
type: float
current: 8
help: The higher, the more the blur preserves edges. from 0.0 to 16.0./n

variable: optimization_use_footstep 
type: int
current: 1
help: Console variable group to apply settings to multiple variables

optimization_use_footstep [0/1/x]:
 ... mfx_MaxFootStepCount = 0/50/50


variable: e_terrain 
type: int
current: 1
help: Activates drawing of terrain ground

variable: e_StreamPredictionTexelDensity 
type: int
current: 1
help: Use mesh texture mapping density info for textures streaming

variable: MasterGrahicQuality DUMPTODISK
type: int
current: 4
help: 

variable: p_approx_caps_len 
type: float
current: 1.2
help: Breakable trees are approximated with capsules of this length (0 disables approximation)

variable: r_ParticleIndHeapSize 
type: int
current: 1048576
help: 

variable: d3d9_VBPools REQUIRE_APP_RESTART
type: int
current: 1
help: 

variable: quest_guide_decal_size 
type: float
current: 0.25
help: 

variable: doodad_smart_positioning 
type: int
current: 1
help: doodad smart positioning enable

variable: net_ship_controller_smooth_time 
type: float
current: 0.1
help: 

variable: r_EnvTexResolution DUMPTODISK
type: int
current: 3
help: Sets resolution for 2d target environment texture, in pixels.
Usage: r_EnvTexResolution #
where # represents:
	0: 64
	1: 128
	2: 256
	3: 512
Default is 3 (512 by 512 pixels).

variable: v_sprintSpeed 
type: float
current: 0
help: Set speed for acceleration measuring

variable: name_tag_quest_mark_smooth_margin 
type: int
current: 40
help: set unit name tag quest_mark_smooth margin

variable: cd_streaming 
type: int
current: 1
help: 

variable: e_particles_dynamic_particle_life 
type: int
current: 1
help: change particle life in runtime

variable: net_phys_lagsmooth 
type: float
current: 0.1
help: 

variable: name_tag_party_show 
type: int
current: 1
help: render name tag of party unit

variable: ca_LodDistMax 
type: int
current: 8
help: 

variable: ca_DebugModelCache 
type: int
current: 0
help: shows what models are currently loaded and how much memory they take

variable: ai_DebugDrawReinforcements DUMPTODISK
type: int
current: -1
help: Enables debug draw for reinforcement logic for specified group.
Usage: ai_DebugDrawReinforcements <groupid>, or -1 to disable.

variable: log_DebuggerVerbosity DUMPTODISK
type: int
current: 2
help: defines the verbosity level for file log messages (if log_Verbosity defines higher value this one is used)
-1=suppress all logs (including eAlways)
0=suppress all logs(except eAlways)
1=additional errors
2=additional warnings
3=additional messages
4=additional comments

variable: es_sortupdatesbyclass 
type: int
current: 0
help: Sort entity updates by class (possible optimization)

variable: e_decals_scissor 
type: int
current: 1
help: Enable decal rendering optimization by using scissor

variable: es_helpers 
type: int
current: 0
help: Toggles helpers.
Usage: es_helpers [0/1]
Default is 0 (off). Set to 1 to display entity helpers.

variable: ca_xl13RandomCount DUMPTODISK
type: int
current: 3
help: xl13 random count

variable: s_StreamBufferSize 
type: int
current: 131072
help: Sets the internal buffer size for streams in raw bytes.
NOTE: This will only affect streams opened after this value has been changed!
Usage: s_StreamBufferSize [0/...]
Default PC: 131072, PS3: 65536, XBox360: 131072


variable: r_NVSSAO_Bias 
type: float
current: 0.05
help: To hide low-tessellation artifacts. from 0.0 to 0.5. 


variable: s_FormatResampler REQUIRE_APP_RESTART
type: int
current: 1
help: Toggles  internal resampling method.
Usage: s_FormatResampler [0..3]
0: none
1: linear
2: cubic
3: spline
Default is 1 (linear).

variable: es_DebrisLifetimeScale 
type: float
current: 1
help: 
Usage: es_DebrisLifetimeScale 1.0


variable: e_time_smoothing 
type: int
current: 1
help: 0=no smoothing, 1=smoothing

variable: cl_shallowWaterSpeedMulAI 
type: float
current: 0.8
help: Shallow water speed multiplier (AI only)

variable: p_GEB_max_cells 
type: int
current: 800
help: Specifies the cell number threshold after which GetEntitiesInBox issues a warning

variable: e_shadows_update_view_dist_ratio 
type: float
current: 128
help: View dist ratio for shadow maps updating for shadowpool

variable: sys_budget_dp_terrain_detail 
type: float
current: 400
help: 

variable: OceanWindDirection 
type: float
current: 1
help: ocean wind direction

variable: ai_AmbientFireUpdateInterval DUMPTODISK
type: float
current: 2
help: Ambient fire update interval. Controls how often puppet's ambient fire status is updated.

variable: r_ReflectionsOffset 
type: float
current: 0
help: 

variable: e_material_refcount_check_logging 
type: int
current: 0
help: 

variable: doodad_smart_positioning_max_dist 
type: float
current: 3
help: (null)

variable: ai_ProtoRODGrenades DUMPTODISK
type: int
current: 1
help: Proto

variable: ca_ignoreCutSceneAnim 
type: int
current: 0
help: cutscene anim debug

variable: e_sky_quality 
type: int
current: 1
help: Quality of dynamic sky: 1 (very high), 2 (high).

variable: log_IncludeTime 
type: int
current: 1
help: Toggles time stamping of log entries.
Usage: log_IncludeTime [0/1/2/3/4]
  0=off (default)
  1=current time
  2=relative time
  3=current+relative time
  4=absolute time in seconds since this mode was started

variable: e_ViewDistRatioPortals 
type: float
current: 60
help: View distance ratio for portals

variable: ca_AllowFP16Characters 
type: int
current: 0
help: When set, this will allow use of FP16 vertex formats for customised character meshes. When not set, all character meshes will be FP32.

variable: s_ReverbDynamic 
type: float
current: 0
help: If greater than 0 enables dynamic reverb-delay and reverb-reflection-delay calculation dependent on the surrounding geometry!
The number than indicates a multiplier for the reverb-delay and reverb-reflection-delay effect.(1.0 manipulates nothing)
Usage: s_ReverbDynamic [0/...]
Default: 0
0: Uses the static values set within the reverb preset.


variable: p_list_objects 
type: int
current: 0
help: 0: off
1: list once
2: on

variable: r_RefractionPartialResolves 
type: int
current: 0
help: Do a partial screen resolve before refraction
Usage: r_RefractionPartialResolves [0/1]
0: disable 
1: enable conservativley (non-optimal)
2: enable (default)

variable: p_debug_explosions 
type: int
current: 0
help: Turns on explosions debug mode

variable: e_terrain_occlusion_culling_precision 
type: float
current: 0.25
help: Density of rays

variable: decoration_smart_positioning 
type: int
current: 1
help: decoration smart positioning enable

variable: e_shader_constant_metrics 
type: int
current: 0
help: Set to 1 to display stats about shader constant uploads.

variable: optimization_mode 
type: int
current: 0
help: Console variable group to apply settings to multiple variables

optimization_mode [0/1/x]:
 ... e_custom_clone_mode = 1/1/1
 ... e_zoneWeatherEffect = 0/0/0
 ... optimization_skeleton_effect = 0/0/0
 ... optimization_use_footstep = 0/0/0
 ... option_animation = 1/1/1
 ... option_character_lod = 1/1/1
 ... option_effect = 1/1/1
 ... option_shadow_dist = 1/1/1
 ... option_shadow_view_dist_ratio = 1/1/1
 ... option_shadow_view_dist_ratio_character = 1/1/1
 ... option_terrain_detail = 1/1/1
 ... option_terrain_lod = 1/1/1
 ... option_texture_bg = 1/1/1
 ... option_texture_character = 1/1/1
 ... option_use_cloud = 0/0/0
 ... option_use_dof = 0/0/0
 ... option_use_hdr = 0/0/0
 ... option_use_shadow = 0/0/0
 ... option_use_water_reflection = 0/0/0
 ... option_view_dist_ratio = 1/1/1
 ... option_view_dist_ratio_vegetation = 1/1/1
 ... option_view_distance = 1/1/1
 ... option_volumetric_effect = 1/1/1
 ... option_water = 1/1/1
 ... option_weapon_effect = 0/0/0


variable: ac_MCMHor 
type: int
current: 0
help: Overrides the horizontal movement control method specified by AG (overrides filter).

variable: ac_MCMVer 
type: int
current: 0
help: Overrides the vertical movement control method specified by AG (overrides filter).

variable: sys_affinity 
type: string
current: 0x0000000000000000
help: 

variable: e_cbuffer_clip_planes_num 
type: int
current: 6
help: Debug

variable: e_volobj_shadow_strength 
type: float
current: 0.4
help: Self shadow intensity of volume objects [0..1].

variable: action_debug_state 
type: int
current: 0
help: Enable effect state
usage: action_debug_state [0(off)|1(on)]
default: 0 (off)

variable: q_Renderer 
type: int
current: 3
help: Defines the quality of Renderer
Usage: q_Renderer 0=low/1=med/2=high/3=very high (default)

variable: camera_zoom_catch_up_velocity_power 
type: float
current: 1.8
help: 

variable: sys_budget_tris_vegetation 
type: float
current: 50
help: 

variable: es_UsePhysVisibilityChecks 
type: int
current: 1
help: Activates physics quality degradation and forceful sleeping for invisible and faraway entities

variable: ai_DrawDistanceLUT 
type: int
current: 0
help: Draws the distance lookup table graph overlay.

variable: es_deactivateEntity 
type: string
current: 
help: Deactivates an entity

variable: e_debug_draw_lod_error_no_lod_tris 
type: int
current: 2000
help: used in e_DebugDraw 25 (error threshold of tris count)

variable: ShowHeatlthNumber 
type: int
current: 0
help: show health value in unit frame, party frame

variable: r_ShadowPoolMaxFrames 
type: int
current: 30
help: Maximum number of frames a shadow can exist in the pool

variable: r_wireframe 
type: int
current: 0
help: 

variable: movement_verify_move_speed_critical_tolerance 
type: float
current: 0.5
help: 

variable: p_max_MC_mass_ratio 
type: float
current: 100
help: Maximum mass ratio between objects in an island that MC solver is considered safe to handle

variable: r_CullGeometryForLights 
type: int
current: 0
help: Rendering optimization for lights.
Usage: r_CullGeometryForLights [0/1/2]
Default is 0 (off). Set to 1 to cull geometry behind
light sources. Set to 2 to cull geometry behind static
lights only.

variable: e_vegetation_use_list 
type: int
current: 1
help: Test : optimize vegetation list

variable: r_DepthOfField 
type: int
current: 2
help: Enables depth of field.
Usage: r_DepthOfField [0/1/2]
Default is 0 (disabled). 1 enables, 2 enables and overrides game settings


variable: e_vegetation_sprites_cast_shadow 
type: int
current: 1
help: 

variable: d3d9_VBPoolSize 
type: int
current: 262144
help: 

variable: option_shadow_view_dist_ratio 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_shadow_view_dist_ratio [1/2/3/4/x]:
 ... e_shadows_cast_view_dist_ratio = 0.25/0.45/0.53/0.8/0.8


variable: g_groundeffectsdebug 
type: int
current: 0
help: Enable/disable logging for GroundEffects

variable: r_ShowVideoMemoryStats 
type: int
current: 0
help: 

variable: camera_rot_speed 
type: float
current: 150
help: 

variable: r_ShowDynTextureFilter 
type: string
current: *
help: Usage: r_ShowDynTextureFilter *end
Usage: r_ShowDynTextureFilter *mid*
Usage: r_ShowDynTextureFilter start*
Default is *. Set to 'pattern' to show only specific textures (activate r_ShowDynTextures)


variable: g_use_chat_time_stamp 
type: int
current: 1
help: 0(use chat time stamp), 1(no chat time stamp)

variable: r_NoDrawNear 
type: int
current: 0
help: Disable drawing of near objects.
Usage: r_NoDrawNear [0/1]
Default is 0 (near objects are drawn).

variable: e_terrain_normal_map 
type: int
current: 1
help: Use terrain normal map for base pass if available

variable: ai_ExtraForbiddenRadiusDuringBeautification 
type: float
current: 1
help: Extra radius added to agents close to forbidden edges during beautification.

variable: p_max_substeps_large_group 
type: int
current: 5
help: Limits the number of substeps large groups of objects can make

variable: FixedTooltipPosition 
type: int
current: 1
help: fixed doodad tooltip position

variable: r_NightVisionViewDist 
type: float
current: 100
help: Set nightvision ambient view distance.


variable: e_StreamPredictionDistanceFar 
type: float
current: 16
help: Prediction distance for streaming, affects far objects

variable: locale 
type: string
current: en_us
help: 

variable: r_UseZPass 
type: int
current: 1
help: Toggles Z pass optimizations.
Usage: r_UseZPass [0/1]
Default is 1 (on). Set to 0 to disable Z-pass.

variable: cl_sprintShake 
type: float
current: 0
help: sprint shake

variable: aim_assistTriggerEnabled 
type: int
current: 1
help: Enable/disable aim assistance on firing the weapon

variable: log_FileVerbosity DUMPTODISK
type: int
current: 3
help: defines the verbosity level for file log messages (if log_Verbosity defines higher value this one is used)
-1=suppress all logs (including eAlways)
0=suppress all logs(except eAlways)
1=additional errors
2=additional warnings
3=additional messages
4=additional comments

variable: r_ssdoAmbientAmount 
type: float
current: 1
help: Strength of SSDO ambient occlusion

variable: ai_DynamicVolumeUpdateTime 
type: float
current: 0.001
help: How long (max) to spend updating dynamic volume regions per AI update (in sec)
0 disables dynamic updates. 0.002 is a sensible value


variable: ca_DrawAttachments 
type: int
current: 1
help: if this is 0, will not draw the attachments objects

variable: e_vegetation_bending 
type: int
current: 2
help: Debug

variable: r_ShowTangents 
type: int
current: 0
help: Toggles visibility of three tangent space vectors.
Usage: r_ShowTangents [0/1]
Default is 0 (off).

variable: ai_UpdateInterval 
type: float
current: 0.1
help: In seconds the amount of time between two full updates for AI  
Usage: ai_UpdateInterval <number>
Default is 0.1. Number is time in seconds


variable: e_voxel_lods_num 
type: int
current: 1
help: Generate LODs for voxels

variable: es_UpdateCollision 
type: int
current: 1
help: Toggles updating of entity collisions.
Usage: es_UpdateCollision [0/1]
Default is 1 (on). Set to 0 to disable entity collision updating.

variable: sys_crashtest 
type: int
current: 0
help: 

variable: r_WaterReflectionsUseMinOffset DUMPTODISK
type: int
current: 1
help: Activates water reflections use min distance offset.


variable: e_view_dist_min 
type: float
current: 0
help: Min distance on what far objects will be culled out

variable: ai_RecordFilter DUMPTODISK
type: int
current: 0
help: 

variable: e_terrain_texture_streaming_debug 
type: int
current: 0
help: Debug

variable: ag_item 
type: string
current: 
help: Force this item

variable: ai_DrawGetEnclosingFailures DUMPTODISK
type: float
current: 0
help: Set to the number of seconds you want GetEnclosing() failures visualized.  Set to 0 to turn visualization off.

variable: bot_fly_mode 
type: int
current: 0
help: bot fly mode

variable: profile_filter 
type: string
current: 
help: Profiles a specified subsystem.
Usage: profile_filter subsystem
Where 'subsystem' may be:
Renderer
3DEngine
Animation
AI
Entity
Physics
Sound
System
Game
Editor
Script
Network


variable: hs_show_housing_area RESTRICTEDMODE
type: int
current: 0
help: 

variable: cd_view_dist_ratio 
type: int
current: 150
help: 

variable: r_NVSSAO_BlurEnable 
type: int
current: 1
help: To blur the AO before compositing it. [0/1]/n

variable: cr_invert_x_axis 
type: int
current: 0
help: invert mouse x axis

variable: mfx_DebugFootStep 
type: int
current: 0
help: Turns on debug foot_step

variable: cl_headBob 
type: float
current: 1
help: head bobbing multiplier

variable: ai_CloakMinDist DUMPTODISK
type: float
current: 1
help: closer than that - cloak not effective

variable: net_enable_voice_chat 
type: int
current: 1
help: 

variable: r_StereoStrength DUMPTODISK
type: float
current: 1
help: Multiplier which influences the strength of the stereo effect.

variable: r_UseAlphaBlend 
type: int
current: 1
help: Toggles alpha blended objects.
Usage: r_UseAlphaBlend [0/1]
Default is 1 (on). Set to 0 to disable all alpha blended object.

variable: tab_targeting_z_limit 
type: float
current: 20
help: 

variable: r_shootingstar_lifetime 
type: float
current: 0.005
help: Lifetime of the shooting star (in game hours).

variable: ca_AnimWarningLevel DUMPTODISK
type: int
current: 3
help: if you set this to 0, there won't be any
frequest warnings from the animation system

variable: e_sky_update_rate 
type: float
current: 1
help: Percentage of a full dynamic sky update calculated per frame (0..100].

variable: r_TexMaxSize 
type: int
current: 0
help: 

variable: g_ragdoll_minE_time 
type: float
current: 3
help: 0 : off, 1 : on

variable: r_ShadowsForwardPass 
type: int
current: 1
help: 1=use Forward prepare depth maps pass
Usage: CV_r_ShadowsForwardPass [0/1]


variable: ui_localized_text_debug DUMPTODISK
type: int
current: 0
help: 

variable: r_RenderMeshHashGridUnitSize 
type: float
current: 0.5
help: Controls density of render mesh triangle indexing structures

variable: cr_invert_y_axis 
type: int
current: 0
help: invert mouse y axis

variable: s_DopplerScale DUMPTODISK
type: float
current: 1
help: Sets the strength of the Doppler effect.
Usage: s_DopplerValue 1.0Default is 1.0. This multiplier affects the sound velocity.

variable: p_min_LCPCG_improvement 
type: float
current: 0.05
help: Defines a required residual squared length improvement, in fractions of 1

variable: p_max_LCPCG_iters 
type: int
current: 5
help: Maximum number of LCP CG iterations

variable: ca_ParametricPoolSize 
type: int
current: 256
help: Size of the parametric pool

variable: e_shadows_unit_cube_clip 
type: int
current: 1
help: Shadow Unit Cube Clip

variable: g_showIdleStats 
type: int
current: 0
help: 

variable: option_terrain_lod 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_terrain_lod [1/2/3/4/x]:
 ... e_terrain_lod_ratio = 4/1/.75/.75/.75
 ... e_terrain_occlusion_culling_max_dist = 100/130/150/200/200


variable: s_ObstructionUpdate 
type: float
current: 0.1
help: Controls how fast obstruction is re-evaluated in seconds.
Usage: s_ObstructionUpdate [0..]
0:		 every frame
0.5:	 every half seconds
Default is 0.1 (for now)

variable: g_ignore_expedition_invite 
type: int
current: 0
help: 0(accept expedition invite), 1(ignore expedition invite)

variable: r_testSplitScreen 
type: int
current: 0
help: Toggles split screen test mode
Usage: r_testSplitScreen [0/1]

variable: e_decals_neighbor_max_life_time 
type: float
current: 4
help: If not zero - new decals will force old decals to fade in X seconds

variable: action_bar_lock 
type: int
current: 0
help: lock actionbar slots.

variable: action_bar_page DUMPTODISK
type: int
current: 0
help: index offset of 1st actionbar.

variable: con_debug 
type: int
current: 0
help: Log call stack on every GetCVar call

variable: e_cbuffer_terrain 
type: int
current: 0
help: Activates usage of coverage buffer for terrain

variable: e_StatObjBufferRenderTasks 
type: int
current: 0
help: 1 - occlusion test on render node level, 2 - occlusion test on render mesh level

variable: keyboard_rotate_speed 
type: float
current: 0.5
help: 

variable: ai_Recorder_Buffer DUMPTODISK
type: int
current: 1024
help: Set the size of the AI debug recording buffer


variable: mfx_SerializeFGEffects 
type: int
current: 1
help: Serialize Flowgraph based effects. Default: On

variable: sys_dedicated_sleep_test 
type: int
current: 0
help: 

variable: r_shootingstar 
type: int
current: 1
help: Enable/disable shooting stars.

variable: ai_ProtoRODAffectMove DUMPTODISK
type: int
current: 0
help: Proto

variable: name_tag_custom_gauge_offset_normal 
type: float
current: 13
help: coustom gauge name tag offset

variable: e_particles_decals_force_deferred 
type: int
current: 1
help: 

variable: r_NoPreprocess 
type: int
current: 0
help: 

variable: prefab_cache_xml_gc 
type: int
current: 1800000
help: (ms), garbage collect xml cache. if turned on, prefab_cache_xml should be 0

variable: ai_UseObjectPosWithExactPos DUMPTODISK
type: int
current: 0
help: Use object position when playing exact positioning.

variable: ca_GroundAlignment DUMPTODISK
type: int
current: 1
help: if this is 1, the legs of human characters will align with the terrain

variable: r_StereoFlipEyes DUMPTODISK
type: int
current: 0
help: Flip eyes in stereo mode.
Usage: r_StereoFlipEyes [0=off/1=on]
0: don't flip
1: flip


variable: r_DepthOfFieldBokehQuality 
type: int
current: 0
help: Sets depth of field bokeh quality (samples multiplier).
Usage: r_DepthOfFieldBokeh [0/1/etc]
Default is 0: 32 samples, 1: 64 samples

variable: e_terrain_occlusion_culling_debug 
type: int
current: 0
help: Draw sphere onevery terrain height sample

variable: name_tag_quest_offset 
type: float
current: 3
help: nametag quest offset

variable: ss_debug_ui RESTRICTEDMODE
type: int
current: 0
help: show seamless debug UI(0=off, 1=cell, 2=vegetation group, 3=terrain, 4=TOD)

variable: cl_packetRate 
type: int
current: 30
help: Packet rate on client

variable: cl_gs_password 
type: string
current: 
help: Password for Gamespy login

variable: sys_budget_dp_terrain 
type: float
current: 800
help: 

variable: e_cbuffer_hw 
type: int
current: 0
help: Debug

variable: e_cbuffer_lc 
type: int
current: 0
help: Debug

variable: name_tag_quest_option 
type: float
current: 1
help: nametag quest option

variable: sv_levelrotation 
type: string
current: levelrotation
help: Sequence of levels to load after each game ends

variable: g_VisibilityTimeoutTime 
type: int
current: 30
help: Visibility timeout time used by IsProbablyVisible() calculations

variable: s_MusicStreaming 
type: int
current: 0
help: Defines the way music is loaded and handled.
Usage: s_MusicStreaming [0..2]
0:	<auto>, streaming is defined by pattern
1: Enforces streaming from disk for less memory usage
2: Enforces preloading to memory for less disk seeks/reads
Default is 0 (auto).

variable: tab_targeting_fan_dist 
type: float
current: 50
help: 

variable: effect_filter_group 
type: int
current: 0
help: [effect group type]

variable: g_ignore_party_invite 
type: int
current: 0
help: 0(accept party invite), 1(ignore party invite)

variable: r_SplitScreenActive 
type: int
current: 0
help: Activates split screen mode
Usage: r_SplitScreenActive [0/1]

variable: e_visarea_test_mode 
type: int
current: 0
help: visarea test mode on for debugging

variable: r_DeferredShadingSortLights 
type: int
current: 0
help: Sorts light by influence
Usage: r_DeferredShadingSortLights [0/1]
Default is 0 (off)

variable: cl_invertController DUMPTODISK
type: int
current: 0
help: Controller Look Up-Down invert

variable: ragdoll_hit 
type: int
current: 0
help: strike target by the impulse at bone at attack hit event[0(off)|+(hit power)]
default: 0(off)

variable: scan_log_level 
type: int
current: 1
help: 

variable: r_ShadowsPCFiltering 
type: int
current: 0
help: 1=use PCF for shadows
Usage: r_ShadowsPCFiltering [0/1]

variable: r_ShadersSaveList 
type: int
current: 1
help: 

variable: v_draw_suspension DUMPTODISK
type: int
current: 0
help: Enables/disables display of wheel suspension, for the vehicle that has v_profileMovement enabled

variable: r_VegetationAlphaTestOnly 
type: int
current: 0
help: 

variable: r_fxaa 
type: int
current: 0
help: Toggles fxaa antialiasing


variable: r_Glow 
type: int
current: 1
help: Toggles the glow effect.
Usage: r_Glow [0/1]
Default is 0 (off). Set to 1 to enable glow effect.

variable: r_MSAA DUMPTODISK
type: int
current: 0
help: Enables selective supersampled antialiasing.
Usage: r_MSAA [0/1]
Default: 0 (off).

variable: r_Rain 
type: int
current: 3
help: Enables rain rendering
Usage: r_Rain [0/1/2]
0 - disabled1 - enabled - CE22 - enabled - CE33 - enabled with rain occlusion

variable: r_SSAO 
type: int
current: 0
help: Enable ambient occlusion

variable: r_ssdo 
type: int
current: 3
help: Screen Space Directional Occlusion [0/1/2]
1 - Enabled for local lights and sun
2 - Enabled for all lights and used for ambient as well (make sure to disable SSAO)99 - Enabled for lights, no smoothing applied (for debugging)

variable: r_SSGI 
type: int
current: 0
help: SSGI toggle

variable: r_TXAA DUMPTODISK
type: int
current: 0
help: Enables nVidia TXAA antialiasing mode. Requires MSAA on in either 2x or 4x mode and PostAA and FXAA off.
Usage: r_TXAA [0/1]
Default: 0 (off).

variable: r_MeshPrecache 
type: int
current: 1
help: 

variable: r_texStagingGCTime 
type: float
current: 10
help: (second)

variable: cl_shallowWaterDepthHi 
type: float
current: 1
help: Shallow water depth high (above has full slowdown)

variable: cl_shallowWaterDepthLo 
type: float
current: 0.3
help: Shallow water depth low (below has zero slowdown)

variable: e_debug_draw_filter 
type: string
current: 
help: e_debug_draw sub param! Show debug info only matched object

variable: um_show_aim_point 
type: int
current: 0
help: show unit model aim point

variable: r_Texture_Anisotropic_Level DUMPTODISK
type: int
current: 1
help: 

variable: doodad_ignore_checking_area 
type: int
current: 0
help: (null)

variable: pl_zeroGUpDown 
type: float
current: 1
help: Scales the z-axis movement speed in zeroG.

variable: s_FormatType REQUIRE_APP_RESTART
type: int
current: 2
help: Sets the format data type.
Usage: s_FormatType [0..5]
0: none
1: PCM 8bit
2: PCM 16bit
3: PCM 24bit
4: PCM 32bit
5: PCM 32bit float
Default is 2 (PCM 16bit).

variable: s_ReverbEchoDSP 
type: int
current: 1
help: Toggles Echo DSP effect. Works only with s_ReverbType set to either 2 or 3!
Usage: s_ReverbEchoDSP [0/1]
Default: 1
0: Bypasses Echo DSP effect.
1: Enables Echo DSP effect. (~~~>Reverb~>Echo~>~~)


variable: cl_hitBlur 
type: float
current: 0.25
help: blur on hit

variable: r_EnvLCMupdateInterval DUMPTODISK
type: float
current: 0.1
help: LEGACY - not used

variable: r_WaterReflectionsMinVisiblePixelsUpdate DUMPTODISK
type: float
current: 0.05
help: Activates water reflections if visible pixels above a certain threshold.


variable: e_decals_overlapping 
type: float
current: 0
help: If zero - new decals will not be spawned if the distance to nearest decals less than X

variable: e_cgf_loading_profile 
type: int
current: 0
help: Debug

variable: doodad_smart_positioning_loop_count 
type: int
current: 10
help: (null)

variable: r_ShadowBluriness DUMPTODISK
type: float
current: 1
help: Select shadow map bluriness if r_ShadowBlur is activated.
Usage: r_ShadowBluriness [0.1 - 16]


variable: ca_UsePostKinematic 
type: int
current: 0
help: if this is 1, it will skip Morph, IK, GroundAlign, etc ..

variable: lua_gc_pause 
type: int
current: 50
help: change LUA_GCSETPAUSE

variable: p_max_LCPCG_microiters 
type: int
current: 12000
help: Limits the total number of per-contact iterations during one LCP CG iteration
(number of microiters = number of subiters * number of contacts)

variable: s_MinRepeatSoundTimeout DUMPTODISK
type: float
current: 200
help: Prevents playback of a sound within time range in MS.
Usage: s_MinRepeatSoundTimeout [0..]
Default is 200.0.

variable: e_terrain_lm_gen_threshold 
type: float
current: 0.1
help: Debug

variable: i_bufferedkeys 
type: int
current: 1
help: Toggles key buffering.
Usage: i_bufferedkeys [0/1]
Default is 0 (off). Set to 1 to process buffered key strokes.

variable: r_CustomVisions 
type: int
current: 1
help: Enables custom visions, like heatvision, binocular view, etc.
Usage: r_CustomVisions [0/1]
Default is 0 (disabled). 1 enables


variable: um_show_attached_child 
type: int
current: 0
help: show attached children of unit model

variable: fr_xspeed DUMPTODISK
type: float
current: 40
help: free camera x(left/right) move speed

variable: p_limit_simple_solver_energy 
type: int
current: 1
help: Specifies whether the energy added by the simple solver is limited (0 or 1)

variable: s_GameMusicVolume 
type: float
current: 0.200001
help: Controls the music volume for game use.
Usage: s_GameMusicVolume 0.2
Default is 1.0

variable: capture_misc_render_buffers 
type: int
current: 0
help: Captures HDR target, depth buffer, shadow mask buffer, AO buffer along with final frame buffer.
0=Disable (default)
1=Enable
Usage: capture_misc_render_buffers [0/1]
Note: Enable capturing via "capture_frames 1".

variable: s_MaxChannels DUMPTODISK
type: int
current: 64
help: Sets the maximum number of sound channels.
Default is 64.

variable: cl_web_session_key 
type: string
current: 2555396B33273B145FD2574276AE0094
help: web session key

variable: s_ObstructionVisArea 
type: float
current: 0.15
help: Controls the effect of additional obstruction per VisArea/portal step.
Usage: s_ObstructionVisArea [0..1]
0:		 none
0.15: obstruction per step
Default is 0.15 

variable: sv_password DUMPTODISK
type: string
current: 
help: Server password

variable: movement_log 
type: int
current: 0
help: show movement log : 0(off), 1(on)

variable: hs_ignore_housing_area RESTRICTEDMODE
type: int
current: 0
help: editor only

variable: sv_map 
type: string
current: 
help: The map the server should load

variable: sound_source_skill_sound_volume 
type: float
current: 1
help: source = player. [0.0 - 1.0]

variable: sys_AI 
type: int
current: 1
help: Enables AI Update

variable: e_character_no_merge_render_chunks 
type: int
current: 0
help: Do not Merge RenderChunk for Skined Meshes

variable: ca_thread0Affinity DUMPTODISK
type: int
current: 5
help: Affinity of first Animation Thread.

variable: smart_ground_targeting 
type: int
current: 0
help: use ground target skill on mouse position

variable: slot_cooldown_visible 
type: int
current: 1
help: visible slot widget cooldown.

variable: e_CacheNearestCubePicking 
type: int
current: 1
help: Enable caching nearest cube maps probe picking for alpha blended geometry

variable: g_ignore_jury_invite 
type: int
current: 0
help: 0(accept jury invite), 1(ignore jury invite)

variable: auto_use_only_my_portal 
type: int
current: 0
help: automatically use portal only if it's mine

variable: ca_DebugADIKTargets 
type: int
current: 0
help: If 1, then it will show if there are animation-driven IK-Targets for this model.

variable: r_meshlog 
type: int
current: 0
help: 

variable: r_Coronas DUMPTODISK
type: int
current: 1
help: Toggles light coronas around light sources.
Usage: r_Coronas [0/1]Default is 1 (on).

variable: r_usefurpass 
type: int
current: 1
help: Use deferred fur pass

variable: fr_yspeed DUMPTODISK
type: float
current: 40
help: free camera y(forward/backward) move speed

variable: r_DepthBits DUMPTODISK
type: int
current: 32
help: 

variable: ag_fpAnimPop DUMPTODISK
type: int
current: 1
help: 

variable: s_CompressedDialog 
type: int
current: 1
help: toggles if dialog data are stored compressed in memory.
Usage: s_CompressedDialog [0/1]
Default is 1 (on).

variable: ai_DebugDrawObstrSpheres DUMPTODISK
type: int
current: 0
help: Draws all the existing obstruction spheres.

variable: camera_fov_on_5by4_screen 
type: float
current: 1.05
help: fov on 5:4 screen ratio

variable: ag_physErrorMaxOuterRadius DUMPTODISK
type: float
current: 0.5
help: 

variable: r_NVSSAO_AmbientLightOcclusion_LowQuality 
type: float
current: 1
help: Scales the effect of ambient occlusion for ambient/indirect light (low quality NVSSAO setting). 0 to 1. Default: 1

variable: net_lanbrowser 
type: int
current: 0
help: enable lan games browser

variable: e_water_waves_tesselation_amount 
type: int
current: 5
help: Sets water waves tesselation amount

variable: caq_fist_randomidle_interval 
type: float
current: 0.1
help: fist random idle interval

variable: ai_serverDebugTarget DUMPTODISK
type: string
current: none
help: 


variable: s_PriorityThreshold 
type: int
current: 45
help: Controls rejection of sounds lower(higher) than this priority if 80% of voices are used.
Usage: s_PriorityThreshold [0..128]
Default is 45, value of 0 disables priority rejection.

variable: fr_zspeed DUMPTODISK
type: float
current: 40
help: free camera z(up/down) move speed

variable: net_enable_fast_ping 
type: int
current: 0
help: 

variable: cloth_mass_decay 
type: float
current: 1
help: 

variable: r_MSAA_amd_resolvessubresource_workaround DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 1
help: Enable temporary workaround for resolvesubresources poor performance on AMD.


variable: s_X2CullingDistance 
type: float
current: 15
help: culling distance.
Usage: s_X2CullingDistance [0..1]
Default is 15 meter.

variable: g_ragdoll_BlendAnim 
type: int
current: 0
help: 0 : off, 1 : on

variable: r_ConditionalRendering 
type: int
current: 0
help: Enables conditional rendering .

variable: option_texture_character 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_texture_character [1/2/3/4/x]:
 ... e_custom_texture_lod = 1/2/3/4/4


variable: login_first_movie DUMPTODISK
type: int
current: 1
help: current movie version (default : 0)

variable: ac_disableFancyTransitions 
type: int
current: 0
help: Disabled Idle2Move and Move2Idle special transition animations.

variable: ca_hideFacialAnimWarning 
type: int
current: 0
help: 

variable: r_TexMinSize 
type: int
current: 64
help: 

variable: r_MeasureOverdrawScale 
type: float
current: 1.5
help: 

variable: es_UpdateAI 
type: int
current: 1
help: Toggles updating of AI entities.
Usage: es_UpdateAI [0/1]
Default is 1 (on). Set to 0 to prevent AI entities from updating.

variable: r_NVDOF_BeforeToneMap 
type: int
current: 0
help: When set to true, NVDOF will render before before tonemapping (ie on the HDR buffer).


variable: editor_serveraddr DUMPTODISK
type: string
current: 192.168.10.31
help: EditorServer address

variable: camera_fov_dist_controll 
type: float
current: 0
help: dist controll

variable: editor_serverport DUMPTODISK
type: int
current: 1230
help: EditorServer port

variable: r_TexPostponeLoading 
type: int
current: 1
help: 

variable: posture_debug 
type: int
current: 0
help: 

variable: e_shadows_on_water 
type: int
current: 0
help: Enable/disable shadows on water

variable: ac_debugMovementControlMethods 
type: int
current: 0
help: Display movement control methods.

variable: movement_verify_detailed_warp_dist_too_far 
type: float
current: 50
help: 

variable: e_VoxTerTexBuildOnCPU 
type: int
current: 0
help: Debug

variable: cl_debug_skill_msg 
type: int
current: 0
help: cl_debug_skill_msg

variable: ai_AllowAccuracyIncrease SAVEGAME
type: int
current: 0
help: Set to 1 to enable AI accuracy increase when target is standing still.

variable: g_debugNetPlayerInput 
type: int
current: 0
help: Show some debug for player input

variable: s_ObstructionMaxRadius 
type: float
current: 500
help: Controls how much loud sounds are affected by obstruction.
Usage: s_ObstructionMaxRadius [0..]
0:		 none
500:	 a sound with a radius of 500m is not affected by obstruction
Default is 500m 

variable: e_vegetation_disable_distant_bending 
type: float
current: 0.0015
help: Disable vegetation bending in the distance

variable: r_ColorGradingCharts 
type: int
current: 1
help: Enables color grading via color charts.
Usage: r_ColorGradingCharts [0/1]

variable: ui_draw_npc_type 
type: int
current: 0
help: draw npc id

variable: g_actor_stance_use_queue 
type: int
current: 1
help: 

variable: skill_synergy_info_show_tooltip 
type: int
current: 1
help: skill synergy info shows tooltip

variable: ca_fullAnimStatistics 
type: int
current: 0
help: If 1, animation statistics shows all animations LMG is consist of, but does not show LMG names themselves.
If 0, shows only top-level LMG names

variable: fr_turn_scale DUMPTODISK
type: float
current: 1
help: free camera turn speed scale

variable: p_use_unproj_vel 
type: int
current: 0
help: internal solver tweak

variable: e_shadows_const_bias 
type: float
current: 0.1
help: Shadows const bias for shadowgen

variable: r_ShadersAsyncActivation 
type: int
current: 1
help: Enable asynchronous shader activation
Usage: r_ShadersAsyncActivation [0/1]
 0 = off, (stalling) synchronous shaders activation
 1 = on, shaders are activated/streamed asynchronously
 2 = on, user cache is also streamed
 5 = 1 and log debugging info
 6 = 2 and log debugging info


variable: cu_stream_equip_change 
type: int
current: 1
help: 

variable: ca_DoPrecache 
type: int
current: 1
help: Enables the precaching set during startup. Set in system.cfg, because used during initialisation.

variable: s_ReverbDebugDraw 
type: int
current: 0
help: Enables reverb ray casting debug drawing. Needs s_ReverbDynamic to be not 0!
Usage: s_ReverbDebugDraw [0/1]
Default: 0


variable: sys_sleep_test 
type: int
current: 0
help: 

variable: e_recursion_occlusion_culling 
type: int
current: 0
help: If 0 - will disable occlusion tests for recursive render calls like render into texture

variable: stirrup_align_rot 
type: int
current: 0
help: 0: align pos, 1: align pos & rot

variable: e_water_ocean_bottom 
type: int
current: 1
help: Activates drawing bottom of ocean

variable: e_debug_lights 
type: float
current: 0
help: Use different colors for objects affected by different number of lights
 black:0, blue:1, green:2, red:3 or more, blinking yellow: more then the maximum enabled

variable: r_profileTerrainDetail 
type: int
current: 0
help: 

variable: c_shakeMult 
type: float
current: 1
help: 

variable: ac_forceSimpleMovement 
type: int
current: 0
help: Force enable simplified movement (not visible, dedicated server, etc).

variable: effect_max_groups 
type: int
current: 400
help: max skill effect group count

variable: r_ssdoAmbientPow 
type: float
current: 0.3
help: Strength of SSDO ambient occlusion

variable: r_NightVisionAmbientMul 
type: float
current: 6
help: Set nightvision ambient color multiplier.


variable: r_ShadersInterfaceVersion REQUIRE_APP_RESTART
type: int
current: 1
help: Sets the current shader interface version. This is useful for maintaining multiple different copies of the shader folder. The shader interface references to the vertex inputs declaration -- which is hardcoded. So the code must match the version of the shaders currently in use. Can only be set in system.cfg, since it affects shader loading.


variable: cl_frozenSoundDelta 
type: float
current: 0.004
help: Threshold for unfreeze shake to trigger a crack sound

variable: option_name_tag_mode 
type: int
current: 1
help: Console variable group to apply settings to multiple variables

option_name_tag_mode [0/1/2/3/x]:
 ... name_tag_appellation_show = 1/0/1/0/1
 ... name_tag_expedition_show = 1/1/1/1/1
 ... name_tag_faction_selection = 0/1/2/0/0
 ... name_tag_faction_show = 1/1/1/0/1
 ... name_tag_friendly_mate_show = 1/1/1/1/1
 ... name_tag_friendly_show = 1/1/1/1/1
 ... name_tag_hostile_mate_show = 1/1/1/1/1
 ... name_tag_hostile_show = 1/1/1/1/1
 ... name_tag_hp_show = 1/1/1/1/1
 ... name_tag_my_mate_show = 1/1/1/1/1
 ... name_tag_npc_show = 1/1/1/1/1
 ... name_tag_party_show = 1/1/1/1/1
 ... name_tag_self_enable = 1/1/1/1/1


variable: r_texture_precache_limit 
type: float
current: 0.8
help: 

variable: x_int1 
type: int
current: 0
help: 

variable: x_int2 
type: int
current: 0
help: 

variable: x_int3 
type: int
current: 0
help: 

variable: es_OnDemandPhysics 
type: int
current: 0
help: 
Usage: es_OnDemandPhysics [0/1]
Default is 1 (on).

variable: ca_UnloadAnimTime 
type: int
current: 60
help: unload animations time. (minute)

variable: sys_memory_cleanup 
type: int
current: 0
help: 

variable: r_OceanMaxSplashes 
type: int
current: 8
help: 

variable: e_under_wear_debug 
type: int
current: 0
help: set bit, for under wear debug. each bit mean, 1=show shirt 2=patns

variable: e_voxel_ao_radius 
type: int
current: 6
help: Ambient occlusion test range in units

variable: e_obj_fast_register 
type: int
current: 1
help: Debug

variable: e_gsm_depth_bounds_debug 
type: int
current: 0
help: Debug GSM bounds regions calculation

variable: e_StreamCgfGridUpdateDistance 
type: float
current: 0
help: Update streaming priorities when camera moves more than this value

variable: cl_check_teleport_to_unit_debug 
type: int
current: 0
help: 

variable: r_HDRBrightLevel DUMPTODISK
type: float
current: 1.25
help: HDR rendering level (bloom multiplier, tweak together with threshold)
Usage: r_HDRBrightLevel [Value]
Default is 0.6

variable: r_EyeAdaptationFactor DUMPTODISK
type: float
current: 0.4
help: HDR rendering eye adaptation factor (0 means no adaption to current scene luminance, 1 means full adaption)
Usage: r_HDREyeAdaptionFactor [Value]
Default is 0.5

variable: hit_assistMultiplayerEnabled 
type: int
current: 1
help: Enable/disable minimum damage hit assistance in multiplayer games

variable: e_vegetation_create_collision_only DUMPTODISK, REQUIRE_LEVEL_RELOAD
type: float
current: 0
help: 

variable: hr_fovAmt 
type: float
current: 0.03
help: goal FOV when hit

variable: equip_requirements_non_check 
type: int
current: 0
help: 1 : on, other : off

variable: mate_y_offset 
type: float
current: 3
help: pet spawn y offset

variable: name_tag_down_scale_limit 
type: float
current: 0.7
help: set unit name tag maximum font size

variable: es_DrawAreaGrid 
type: int
current: 0
help: Enables drawing of Area Grid

variable: cl_tgwindex DUMPTODISK
type: int
current: 0
help: Tgw address index

variable: r_Brightness DUMPTODISK
type: float
current: 0.5
help: Sets the diplay brightness.
Usage: r_Brightness 0.5
Default is 0.5.

variable: r_TexResolution_Conditional DUMPTODISK
type: int
current: 0
help: Reduces texture resolution.
Usage: r_TexResolution [0/1/2 etc]
When 0 (default) texture resolution is unaffected, 1 halves, 2 quarters etc.

variable: r_ShadowsOrthogonal 
type: int
current: 1
help: 0 - Use a perspective transform that emulates an orthogonal transform for sun shadows (old behaviour)
1 - Use an orthogonal transform for sun shadows (new behaviour)

variable: r_HDRTexFormat DUMPTODISK
type: int
current: 0
help: HDR texture format. 
Usage: r_HDRTexFormat [Value] 0:(low precision - cheaper/faster), 1:(high precision)
Default is 0

variable: profile_graph 
type: int
current: 0
help: Enable drawing of profiling graph.


variable: e_particles_lod_onoff 
type: int
current: 1
help: particle lod of off

variable: ca_Validate 
type: int
current: 0
help: if set to 1, will run validation on animation data

variable: ui_scale 
type: float
current: 1
help: ui scale

variable: sys_flush_system_file_cache 
type: int
current: 1
help: Flush system file cache every 1 minute

variable: ui_stats DUMPTODISK
type: int
current: 0
help: 

variable: draw_tornado_area 
type: int
current: 0
help: drawing torando area

variable: e_terrain_bboxes 
type: int
current: 0
help: Show terrain nodes bboxes. 1(main pass), 2(detail mesh), 3(range size), 4(shadow pass)

variable: r_ProfileShadersSmooth 
type: int
current: 2
help: Enables display of render profiling information.
Usage: r_ProfileShaders [0/1]
Default is 0 (off). Set to 1 to display profiling
of rendered shaders.

variable: e_debug_draw_lod_error_min_reduce_ratio 
type: float
current: 0.8
help: used in e_DebugDraw 25 (error threshold of ratio each lod levels)

variable: ai_SoundPerception 
type: int
current: 1
help: Toggles AI sound perception.
Usage: ai_SoundPerception [0/1]
Default is 1 (on). Used to prevent AI from hearing sounds for
debugging purposes. Works with ai_DebugDraw enabled.

variable: g_quickGame_ping1_level DUMPTODISK
type: int
current: 80
help: QuickGame option

variable: ds_WarnOnMissingLoc 
type: int
current: 1
help: Warn on Missing Localization Entries

variable: sys_budget_dp_character 
type: float
current: 800
help: 

variable: ca_UseJointMasking DUMPTODISK
type: int
current: 1
help: Use Joint Masking to speed up motion decoding.

variable: r_SSAO_downscale 
type: int
current: 0
help: Use downscaled computations for SSAO

variable: r_DeferredShadingScissor 
type: int
current: 1
help: Toggles deferred shading scissor test.
Usage: r_DeferredShadingScissor [0/1]
Default is 1 (enabled), 0 Disables

variable: net_ship_no_interpolate 
type: int
current: 0
help: 

variable: ca_FacialAnimationRadius 
type: float
current: 5
help: Maximum distance at which facial animations are updated - handles zooming correctly

variable: e_occlusion_volumes_view_dist_ratio 
type: float
current: 0.05
help: Controls how far occlusion volumes starts to occlude objects

variable: tab_targeting_dir 
type: int
current: 0
help: 

variable: r_IrradianceVolumes 
type: int
current: 1
help: Toggles irradiance volumes.
Usage: r_IrradianceVolumes [0/1]
Default is 0 (off)

variable: cr_sensitivityMax 
type: float
current: 30
help: 

variable: cr_sensitivityMin 
type: float
current: 10
help: 

variable: r_StereoMode DUMPTODISK
type: int
current: 0
help: Sets stereo rendering mode.
Usage: r_StereoMode [0=off/1/2]
1: Dual rendering
2: Post Stereo


variable: r_DetailDistance DUMPTODISK
type: float
current: 8
help: Distance used for per-pixel detail layers blending.
Usage: r_DetailDistance (1-20)
Default is 6.

variable: v_altitudeLimitLowerOffset 
type: float
current: 0.1
help: Used in conjunction with v_altitudeLimit to set the zone when gaining altitude start to be more difficult.

variable: aim_assistCrosshairSize 
type: int
current: 25
help: screen size used for crosshair aim assistance

variable: MemStatsFilter 
type: string
current: 
help: 

variable: profile_smooth 
type: float
current: 0.35
help: Profiler exponential smoothing interval (seconds).


variable: p_do_step 
type: int
current: 0
help: Steps physics system forward when in single step mode.
Usage: p_do_step 1
Default is 0 (off). Each 'p_do_step 1' instruction allows
the physics system to advance a single step.

variable: r_SupersamplingFilter 
type: int
current: 0
help: Filter method to use when resolving supersampled output
0 - Box filter
1 - Tent filter
2 - Gaussian filter
3 - Lanczos filter

variable: ag_drawActorPos 
type: int
current: 0
help: Draw actor pos/dir

variable: e_CoverageBufferRotationSafeCheck 
type: int
current: 0
help: Coverage buffer safe checking for rotation 0=disabled 1=enabled 2=enabled for out of frustum object

variable: r_UseShadowsPool 
type: int
current: 1
help: 0=Disable
1=Enable
Usage: r_UseShadowsPool[0/1]


variable: r_LightsSinglePass 
type: int
current: 0
help: 

variable: ca_UseFileAfterDBH 
type: int
current: 1
help: Enable loading animations from DBH and File

variable: ai_UseCalculationStopperCounter 
type: int
current: 1
help:  0 - Use Timer, 1 - Use Counter(Calls per second)

variable: movement_verify_speed_sample_min 
type: int
current: 50
help: 

variable: r_ShadersDebug DUMPTODISK
type: int
current: 0
help: Enable special logging when shaders become compiled
Usage: r_ShadersDebug [0/1/2/3]
 1 = assembly into directory Main/{Game}/shaders/cache/d3d9
 2 = compiler input into directory Main/{Game}/testcg
 3 = compiler input into directory Main/{Game}/testcg_1pass
 4 = compile as usual, but include the DEBUG flag on the compiler input
Default is 0 (off)

variable: rope_skill_controller_target_moved_away_dist 
type: float
current: 2
help: 

variable: ca_lipsync_phoneme_strength 
type: float
current: 1
help: LipSync phoneme strength

variable: r_FogDepthTest 
type: float
current: 0
help: Enables per-pixel culling for deferred volumetric fog pass.
Fog computations for all pixels closer than a given depth value will be skipped.
Usage: r_FogDepthTest z with...
  z = 0, culling disabled
  z > 0, fixed linear world space culling depth
  z < 0, optimal culling depth will be computed automatically based on camera direction and fog settings

variable: ca_lipsync_phoneme_offset 
type: int
current: 20
help: Offset phoneme start time by this value in milliseconds

variable: r_GlitterVariation 
type: float
current: 1
help: Sets glitter variation.
Usage: r_GlitterVariation n (default is 1)
Where n represents a number: eg: 0.5

variable: ua_show 
type: int
current: 0
help: show unit attributes. 1: self, 2: target, 3: both

variable: e_shadows_cast_view_dist_ratio 
type: float
current: 0.8
help: View dist ratio for shadow maps

variable: s_InactiveSoundIterationTimeout DUMPTODISK
type: float
current: 1
help: This variable is for internal use only.

variable: p_cull_distance 
type: float
current: 100
help: Culling distance for physics helpers rendering

variable: name_tag_perspective_rate 
type: int
current: 1
help: set unit name tag perspective rate (0~100)

variable: r_ShowDynTextures 
type: int
current: 0
help: Display a dyn. textures, filtered by r_ShowDynTextureFilter
Usage: r_ShowDynTextures 0/1/2
Default is 0. Set to 1 to show all dynamic textures or 2 to display only the ones used in this frame


variable: r_DebugRenderMode 
type: int
current: 0
help: 

variable: max_unit_in_world 
type: int
current: 100000
help: max unit in world

variable: e_vegetation 
type: int
current: 1
help: Activates drawing of distributed objects like trees

variable: cloth_thickness 
type: float
current: 0
help: thickness for collision checks

variable: i_mouse_inertia DUMPTODISK
type: float
current: 0
help: Set mouse inertia. It is disabled (0.0) by default.
Usage: i_mouse_inertia [float number]
Default is 0.0

variable: g_VisibilityTimeout 
type: int
current: 0
help: Adds visibility timeout to IsProbablyVisible() calculations

variable: r_ColorGradingFilters 
type: int
current: 1
help: Enables color grading.
Usage: r_ColorGradingFilters [0/1]


variable: r_TexHWMipsGeneration 
type: int
current: 1
help: 

variable: disable_private_message_music 
type: int
current: 0
help: disable private message music. default is 0.

variable: s_MemoryPoolSoundSecondary REQUIRE_APP_RESTART
type: float
current: 0
help: Sets the size in MB of the secondary sound memory pool. On PS3 it is located in RSX memory, on Xbox360 its Physical memory.
Usage: s_MemoryPoolSoundSecondary [0..]
0:			<auto>, PC:0, PS3:16, X360:4
Default is 0 <auto>.

variable: r_TerrainSpecular_Metallicness 
type: float
current: 0.05
help: 'Metallicness' parameter for specular. Controls specular reflection colour.

variable: r_dofMinZBlendMult 
type: float
current: 1
help: Set dof min z blend multiplier (bigger value means faster blendind transition)


variable: battleship_option 
type: int
current: 0
help: 

variable: e_screenshot_file_format 
type: string
current: jpg
help: Set output image file format. Can be JPG or TGA for hires screen shots.

variable: r_ZPassDepthSorting 
type: int
current: 0
help: Toggles Z pass depth sorting.
Usage: r_ZPassDepthSorting [0/1/2]
0: No depth sorting
1: Sort by depth layers (default)
2: Sort by distance


variable: g_quickGame_prefer_mycountry DUMPTODISK
type: int
current: 0
help: QuickGame option

variable: sys_physics_client 
type: int
current: 1
help: turn on/off physics thread client only

variable: ai_EnableAsserts DUMPTODISK
type: int
current: 0
help: Enable AI asserts: 1 or 0

variable: cloth_damping 
type: float
current: 0
help: 

variable: e_fogvolumes 
type: int
current: 1
help: Activates local height/distance based fog volumes

variable: MemStats 
type: int
current: 0
help: 0/x=refresh rate in milliseconds
Use 1000 to switch on and 0 to switch off
Usage: MemStats [0..]


variable: s_GameVehicleMusicVolume 
type: float
current: 0.200001
help: Controls the vehicle music volume for game use.
Usage: s_GameVehicleMusicVolume 1.0
Default is 1, which is full volume.

variable: r_HDRBloomMul 
type: float
current: 0.2
help: HDR bloom multiplier
Usage: r_HDRBloomMul [Value]

variable: world_serveraddr DUMPTODISK
type: string
current: na_hotfix
help: WorldServer address

variable: world_serverport DUMPTODISK
type: int
current: 1240
help: WorldServer port

variable: sys_budget_tris_character 
type: float
current: 80
help: 

variable: camera_fov_from_entity 
type: float
current: 0
help: fov from entity at login stage

variable: e_terrain_log 
type: int
current: 0
help: Debug

variable: e_custom_max_clone_model 
type: int
current: 3
help: max custom model with clone mode

variable: s_GameMIDIVolume 
type: float
current: 0.200001
help: Controls the MIDI volume for game use.
Usage: s_GameMIDIVolume 1.0
Default is 1, which is full volume.

variable: p_draw_helpers 
type: string
current: 0
help: Same as p_draw_helpers_num, but encoded in letters
Usage [Entity_Types]_[Helper_Types] - [t|s|r|R|l|i|g|a|y|e]_[g|c|b|l|t(#)]
Entity Types:
t - show terrain
s - show static entities
r - show sleeping rigid bodies
R - show active rigid bodies
l - show living entities
i - show independent entities
g - show triggers
a - show areas
y - show rays in RayWorldIntersection
e - show explosion occlusion maps
Helper Types
g - show geometry
c - show contact points
b - show bounding boxes
l - show tetrahedra lattices for breakable objects
j - show structural joints (will force translucency on the main geometry)
t(#) - show bounding volume trees up to the level #
f(#) - only show geometries with this bit flag set (multiple f's stack)
Example: p_draw_helpers larRis_g - show geometry for static, sleeping, active, independent entities and areas

variable: r_Character_NoDeform 
type: int
current: 0
help: 

variable: client_default_zone 
type: int
current: -1
help: -1: seamlessZone, number: instant or seamless zone

variable: ca_CALthread DUMPTODISK
type: int
current: 1
help: If >0 enables Cal and DBH Multi-Threading.

variable: r_ShowTexTimeGraph 
type: int
current: 0
help: Configures graphic display of frame-times.
Usage: r_ShowTexTimeGraph [0/1/2]
	1: Graph displayed as points.	2: Graph displayed as lines.Default is 0 (off).

variable: e_raycasting_debug 
type: int
current: 0
help: 

variable: camera_align 
type: int
current: 1
help: on/off

variable: ucc_ver DUMPTODISK
type: int
current: 5
help: current movie version (default : 0)

variable: s_NetworkAudition REQUIRE_APP_RESTART
type: int
current: 0
help: Toggles network audition (opens port/needs restart).
Usage: s_NetworkAudition [0/1]
Default is 0 (off).

variable: r_EnvCMWrite 
type: int
current: 0
help: Writes cube-map textures to disk.
Usage: r_EnvCMWrite [0/1]
Default is 0 (off). The textures are written to 'Cube_posx.jpg'
'Cube_negx.jpg',...,'Cube_negz.jpg'. At least one of the real-time
cube-map shaders should be present in the current scene.


variable: r_ShadersEditing 
type: int
current: 0
help: Force all cvars to settings, which allow shader editing

variable: e_debug_draw 
type: int
current: 0
help: Draw helpers with information for each object (same number negative hides the text)
 1: Name of the used cgf, polycount, used LOD
 2: Color coded polygon count
 3: Show color coded LODs count, flashing color indicates no Lod
 4: Display object texture memory usage
 5: Display color coded number of render materials
 6: Display ambient color
 7: Display tri count, number of render materials, texture memory
 8: RenderWorld statistics (with view cones)
 9: RenderWorld statistics (with view cones without lights)
10: Render geometry with simple lines and triangles
11: Render occlusion geometry additionally
12: Render occlusion geometry without render geometry
13: Render occlusion ammount (used during AO computations)
15: Display helpers
16: Display material name
17: Display AABB radius
24: Display lod warning and error
25: Display lod error
26: Display object stats in current scene

variable: e_debug_mask 
type: int
current: 0
help: debug variable to activate certain features for debugging (each bit represents one feature
bit 0(1): use EFSLIST_TERRAINLAYER
bit 1(2):
bit 3(4):
bit 4(8):

variable: e_ParticlesCoarseShadowMask 
type: float
current: 0
help: Allows particles coarse shadow mask approximation
0 = Off
1 = Enabled


variable: ca_DebugCriticalErrors 
type: int
current: 0
help: if 1, then we stop with a Fatal-Error if we detect a serious issue

variable: ca_AnimActionDebug 
type: int
current: 0
help: Enables debugging information for the AnimActions

variable: r_DynTexAtlasCloudsMaxSize 
type: int
current: 32
help: 

variable: name_tag_custom_gauge_offset_hpbar 
type: float
current: 13
help: coustom gauge name name tag offset

variable: ai_skill_debug DUMPTODISK
type: int
current: 0
help: Enable/Disable ai skill debug. Set to 0 to turn off.

variable: r_ShadersAddListRTAndRT 
type: string
current: 
help: 

variable: v_profileMovement 
type: int
current: 0
help: Used to enable profiling of the current vehicle movement (1 to enable)

variable: name_tag_size_scale_on_bgmode 
type: float
current: 0.8
help: nametag size scale on bgmode

variable: projectile_debug 
type: int
current: 0
help: Enable projectile debug
usage: projectile_debug [0(off)|1(on)]
default: 0 (off)

variable: sys_budget_particle 
type: float
current: 1000
help: 

variable: ca_DrawSkeletonName 
type: int
current: 0
help: draw skeleton name on ca_drawSkeleton

variable: player_debug_state 
type: int
current: 0
help: Enable player state
usage: player_debug_state [0|1]
default: 0 (off)

variable: mfx_EnableFGEffects 
type: int
current: 1
help: Enabled Flowgraph based Material effects. Default: On

variable: g_quickGame_map DUMPTODISK
type: string
current: 
help: QuickGame option

variable: es_UpdateCollisionScript 
type: int
current: 1
help: 
Usage: es_UpdateCollisionScript [0/1]
Default is 1 (on).

variable: es_DebugEvents 
type: int
current: 0
help: Enables logging of entity events


variable: hs_simple_castle_grid_draw RESTRICTEDMODE
type: int
current: 0
help: shows grid at my pos

variable: cd_optimize_update_tm 
type: int
current: 1
help: 

variable: s_CullingByCache 
type: int
current: 1
help: Controls if sound name are cache to allow early culling.
Usage: s_CullingByCache [0/1]
Default is 1 (on).

variable: r_ShadersSubmitRequestline 
type: int
current: 0
help: 

variable: r_DebugLights 
type: int
current: 0
help: Display dynamic lights for debugging.
Usage: r_DebugLights [0/1/2/3]
Default is 0 (off). Set to 1 to display centres of light sources,
or set to 2 to display light centres and attenuation spheres, 3 to get light properties to the screen

variable: ai_RecordLog DUMPTODISK
type: int
current: 0
help: log all the AI state changes on stats_target

variable: ca_Cheap 
type: int
current: 0
help: Use cheaped game controll.

variable: name_tag_large_app_stamp_offset_hpbar 
type: float
current: 0.1
help: large stamp app name name tag offset

variable: e_gsm_range_step_terrain 
type: float
current: 1.5
help: gsm_range_step for last gsm lod containg terrain

variable: r_PreloadUserShaderCache 
type: int
current: 1
help: Set the mode for preloading the user shader cache during startup.
0 -- disabled1 -- always enabled2 -- only enabled with 3GB+

variable: r_ColorGradingLevels 
type: int
current: 1
help: Enables color grading.
Usage: r_ColorGradingLevels [0/1]


variable: e_cull_veg_activation 
type: int
current: 50
help: Vegetation activation distance limit; 0 disables visibility-based culling (= unconditional activation)

variable: e_shadows_optimised_object_culling 
type: int
current: 1
help: When set to 1, use an optimised path for culling objects from the shadow frustums.

variable: cl_gs_email 
type: string
current: 
help: Email address for Gamespy login

variable: net_actor_controller_delay_margin 
type: int
current: 300
help: 

variable: s_HDRFalloff DUMPTODISK
type: float
current: 1
help: How quickly sound adjusts back from current loudness
Usage: s_HDRFalloff [0..1.0f]Default is 1.0f

variable: custom_skill_queue 
type: int
current: 1
help: custom skill queue - 0: disable, 1 : enable except combo, 2 : enable to all

variable: optimization_skeleton_effect 
type: int
current: 1
help: Console variable group to apply settings to multiple variables

optimization_skeleton_effect [0/1/x]:
 ... ca_SameSkeletonEffectsMaxCount = 15/15/15
 ... ca_SkeletonEffectsMaxCount = 0/100/100


variable: e_GIPropagationAmp 
type: float
current: 3.3
help: Light amplification during each propagation iteration. Default: 3.3 Min: 1 Max: 5

variable: ca_dbh_level 
type: int
current: 3
help: memory size for dbh (5MB / 15MB / 45MB)

variable: r_NightVision 
type: int
current: 1
help: Toggles nightvision enabling.
Usage: r_NightVision [0/1]
Default is 1 (on). Set to 0 to completely disable nightvision.

variable: ac_animErrorMaxDistance 
type: float
current: 0.15
help: Meters animation location is allowed to stray from entity.

variable: pl_fallDamage_SpeedBias 
type: float
current: 1.5
help: Damage bias for medium fall speed: =1 linear, <1 more damage, >1 less damage.

variable: pl_fallDamage_SpeedSafe 
type: float
current: 20
help: Safe fall speed (in all modes, including strength jump on flat ground).

variable: ai_UseAlternativeReadability SAVEGAME
type: int
current: 0
help: Switch between normal and alternative SoundPack for AI readability.

variable: movement_verify_airstanding_error_rate 
type: float
current: 0.5
help: 

variable: es_CharZOffsetSpeed DUMPTODISK
type: float
current: 2
help: sets the character Z-offset change speed (in m/s), used for IK

variable: e_terrain_draw_this_sector_only 
type: int
current: 0
help: 1 - render only sector where camera is and objects registered in sector 00, 2 - render only sector where camera is

variable: camera_move_hold_z 
type: float
current: 0
help: 

variable: option_volumetric_effect 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

option_volumetric_effect [1/2/3/4/x]:
 ... e_Clouds = 0/1/1/1/1
 ... r_Beams = 3/4/3/3/3
 ... r_BeamsDistFactor = 1/0.5/0.5/0.05/0.05
 ... r_BeamsMaxSlices = 16/32/64/200/200
 ... r_CloudsUpdateAlways = 0/0/0/0/0


variable: ac_enableExtraSolidCollider 
type: int
current: 0
help: Enable extra solid collider (for non-pushable characters).

variable: ai_ProtoRODFireRange DUMPTODISK
type: float
current: 35
help: Proto

variable: e_terrain_occlusion_culling 
type: int
current: 1
help: heightmap occlusion culling with time coherency 0=off, 1=on

variable: OceanWavesAmount 
type: float
current: 1.6
help: wave amount

variable: r_DebugScreenEffects 
type: int
current: 0
help: Debugs screen effects textures.
Usage: r_DebugScreenEffects #
Where # represents:
	0: disabled (default)
	1: enabled


variable: quest_source_cam_offset 
type: float
current: 1.5
help: quest source cam offset

variable: mfx_SoundImpactThresh 
type: float
current: 1.5
help: Impact threshold for sound effects. Default: 1.5

variable: g_quickGame_mode DUMPTODISK
type: string
current: PowerStruggle
help: QuickGame option

variable: r_TXAA_DebugMode 
type: int
current: 0
help: Sets the TXAA debug mode value.
0 = TXAA_MODE_2xMSAAx1T
1 = TXAA_MODE_4xMSAAx1T
2 = TXAA_MODE_DEBUG_VIEW_MV
3 = TXAA_MODE_DEBUG_2xMSAA
4 = TXAA_MODE_DEBUG_4xMSAA
5 = TXAA_MODE_DEBUG_2xMSAAx1T_DIFF
6 = TXAA_MODE_DEBUG_4xMSAAx1T_DIFF
Default: 0 (normal).

variable: ca_DebugSkeletonEffects 
type: int
current: 0
help: If true, dump log messages when skeleton effects are handled.

variable: e_debug_draw_objstats_warning_tris 
type: int
current: 50000
help: used in e_DebugDraw 26 (warning threshold of tris count)

variable: e_VoxTerShapeCheck 
type: int
current: 0
help: Debug

variable: sound_enable_npc_chat_bubble_voice 
type: int
current: 1
help: npc chat bubble voice (enable : 1, disable : others)

variable: e_GsmExtendLastLodUseAdditiveBlending 
type: int
current: 0
help: Enable Additive Blending on shadows from terrain

variable: p_max_MC_vel 
type: float
current: 15
help: Maximum object velocity in an island that MC solver is considered safe to handle

variable: ca_DebugAnimUsage 
type: int
current: 0
help: shows what animation assets are used in the level

variable: g_LogIdleStats 
type: int
current: 0
help: 

variable: d3d9_rb_Tris REQUIRE_APP_RESTART
type: int
current: 65536
help: 

variable: g_enableloadingscreen DUMPTODISK
type: int
current: 1
help: Enable/disable the loading screen

variable: ca_MemoryUsageLog 
type: int
current: 0
help: enables a memory usage log

variable: r_NVDOF_FarBlurSize 
type: float
current: 8
help: The strength of the far blur effect. From 1 to 15 (default 8). The higher the number, the more blurred things will appear in the far field.


variable: replay_buffer_size 
type: int
current: 8
help: MB

variable: ucc_show_id 
type: int
current: 0
help: toggle shows ucc id

variable: gliding_mouse_ad 
type: float
current: 8
help: 

variable: gliding_mouse_ws 
type: float
current: 8
help: 

variable: login_localization DUMPTODISK
type: string
current: 
help: auto set to localized_text_reload

variable: ca_DrawPositionPre 
type: int
current: 0
help: draws the world position of the character (before update)

variable: r_WindowX DUMPTODISK
type: int
current: 317
help: Sets the window x position.
Usage: r_WindowX [100/200/..]

variable: r_WindowY DUMPTODISK
type: int
current: 165
help: Sets the window y position.
Usage: r_WindowY [100/200/..]

variable: p_draw_helpers_num 
type: int
current: 0
help: Toggles display of various physical helpers. The value is a bitmask:
bit 0  - show contact points
bit 1  - show physical geometry
bit 8  - show helpers for static objects
bit 9  - show helpers for sleeping physicalized objects (rigid bodies, ragdolls)
bit 10 - show helpers for active physicalized objects
bit 11 - show helpers for players
bit 12 - show helpers for independent entities (alive physical skeletons,particles,ropes)
bits 16-31 - level of bounding volume trees to display (if 0, it just shows geometry)
Examples: show static objects - 258, show active rigid bodies - 1026, show players - 2050

variable: e_terrain_optimised_ib 
type: int
current: 0
help: Set to 1 to use the optimised IB generation for terrain. Uses some more memory, but speeds up terrain work.

variable: localized_texts_db_location DUMPTODISK
type: string
current: 
help: 

variable: rope_skill_controller_air_time_for_change_to_flymode 
type: float
current: 0.25
help: 

variable: ds_LoadSoundsSync 
type: int
current: 0
help: Load Sounds synchronously

variable: e_CoverageBufferTolerance 
type: int
current: 0
help: amount of visible pixel that will still identify the object as covered

variable: cl_country_code 
type: string
current: 
help: pod user country code

variable: p_max_MC_iters 
type: int
current: 6000
help: Specifies the maximum number of microcontact solver iterations

variable: s_PrecacheData 
type: int
current: 1
help: Toggles precaching of static sounds on level loading.
Usage: s_PrecacheData [0/1]
Default is 1.

variable: ss_min_loading_dist_ratio RESTRICTEDMODE
type: float
current: 0.5
help: minimum dist ratio to view dist to load terrain and geometries

variable: e_gsm_cache 
type: float
current: 0
help: Cache sun shadows maps over several frames 0=off, 1=on if MultiGPU is deactivated

variable: pl_zeroGSpeedMultSpeedSprint 
type: float
current: 5
help: Modify movement speed in zeroG, in speed sprint.

variable: camera_dive_enable 
type: int
current: 1
help: 

variable: e_StreamCgfDebug 
type: int
current: 0
help: Draw helpers and other debug information about CGF streaming
 1: Draw color coded boxes for objects taking more than e_StreamCgfDebugMinObjSize,
    also shows are the LOD's stored in single CGF or were split into several CGF's
 2: Trace into console every loading and unloading operation
 3: Print list of currently active objects taking more than e_StreamCgfDebugMinObjSize KB

variable: e_gsm_stats 
type: int
current: 0
help: Show GSM statistics 0=off, 1=enable debug to the screens

variable: e_dist_for_wsbbox_update 
type: float
current: 1
help: 

variable: e_dynamic_light_frame_id_vis_test 
type: int
current: 1
help: Use based on last draw frame visibility test

variable: sv_ranked 
type: int
current: 0
help: Enable statistics report, for official servers only.

variable: i_mouse_buffered 
type: int
current: 0
help: Toggles mouse input buffering.
Usage: i_mouse_buffered [0/1]
Default is 0 (off). Set to 1 to process buffered mouse input.

variable: MemStatsThreshold 
type: int
current: 32000
help: 

variable: r_MotionBlurShutterSpeed 
type: float
current: 0.015
help: Sets motion blur camera shutter speed.
Usage: r_MotionBlurShutterSpeed [0...1]
Default is 0.015f.


variable: bot_select_char_index 
type: int
current: 0
help: select character index (0 ~ n), invalid index stop progress

variable: e_recursion_view_dist_ratio 
type: float
current: 0.1
help: Set all view distances shorter by factor of X

variable: r_ZPassOnly 
type: int
current: 0
help: 

variable: e_cbuffer_resolution 
type: int
current: 256
help: Resolution of software coverage buffer

variable: e_shadows_adapt_scale 
type: float
current: 2.72
help: Shadows slope bias for shadowgen

variable: e_screenshot_debug 
type: int
current: 0
help: 0 off
1 show stiching borders
2 show overlapping areas

variable: cl_freeCamDamping 
type: float
current: 0.5
help: Free camera damping

variable: r_ArmourPulseSpeedMultiplier 
type: float
current: 1
help: Armour pulse speed multiplier - default = 1.0

variable: net_stats_login DUMPTODISK
type: string
current: 
help: Login for reporting stats on dedicated server

variable: s_DrawSounds 
type: int
current: 0
help: Toggles drawing of a small red ball at the sound's position and additional information.
Usage: s_DrawSounds [0..4]
Default is 0 (off).
1: Draws the ball, filename and the current volume of the used channel for all active sounds.
2: Draws the ball, used channel, static volume, current volume, SoundID of the used channel for all active sounds.
3: Draws the ball, all information for all active sounds.
4: Draws the ball, and information for all sounds (also unactive).

variable: es_ImpulseScale 
type: float
current: 0
help: 
Usage: es_ImpulseScale 0.0


variable: r_HDRSCurveMax DUMPTODISK
type: float
current: 0.95
help: HDR s-curve max output
Usage: r_HDRSCurveMax [Value]
Default is 0.95

variable: r_HDRSCurveMin DUMPTODISK
type: float
current: 0
help: HDR s-curve min output
Usage: r_HDRSCurveMin [Value]
Default is 0.0

variable: e_gsm_force_terrain_include_objects 
type: int
current: 0
help: Includes All Object into terrain shadow map

variable: um_vehicle_deep_water_speed_ratio 
type: float
current: 0.1
help: 

variable: e_show_modelview_commands 
type: int
current: 0
help: show modelview commands

variable: camera_max_dist 
type: float
current: 10
help: 

variable: r_NightVisionCamMovNoiseAmount 
type: float
current: 0.5
help: Set nightvision noise amount based on camera movement.


variable: r_DrawNearFarPlane 
type: float
current: 40
help: Default is 40.

variable: ai_PathfindTimeLimit 
type: float
current: 2
help: Specifies how many seconds an individual AI can hold the pathfinder blocked
Usage: ai_PathfindTimeLimit 1.5
Default is 2. A lower value will result in more path requests that end in NOPATH -
although the path may actually exist.

variable: s_GameCinemaVolume 
type: float
current: 0.200001
help: Controls the cinema volume for game use.
Usage: s_GameCinemaVolume 1.0
Default is 1, which is full volume.

variable: p_net_minsnapdot 
type: float
current: 0.99
help: Minimum quat dot product between server orientation and client orientation at which to start snapping

variable: e_screenshot_width 
type: int
current: 2000
help: used for e_panorama_screenshot to define the width of the destination image, 2000 default

variable: ai_OverlayMessageDuration DUMPTODISK
type: float
current: 5
help: How long (seconds) to overlay AI warnings/errors

variable: net_actor_controller_ragdoll_smooth_time 
type: float
current: 1
help: 

variable: sys_SSInfo 
type: int
current: 0
help: Show SourceSafe information (Name,Comment,Date) for file errors.Usage: sys_SSInfo [0/1]
Default is 0 (off).

variable: sv_DedicatedMaxRate 
type: float
current: 30
help: Sets the maximum update rate when running as a dedicated server.
Usage: sv_DedicatedMaxRate [5..500]
Default is 50.

variable: r_DrawNearFoV 
type: int
current: 60
help: Sets the FoV for drawing of near objects.
Usage: r_DrawNearFoV [n]
Default is 60.

variable: r_shadersUnLoadBinCaches 
type: int
current: 1
help: 

variable: r_ShadowsX2CustomBias 
type: float
current: 1
help: Custom Bias for Sun Light

variable: ai_TickCounter DUMPTODISK
type: int
current: 0
help: Enables AI tick counter


variable: g_joint_breaking 
type: int
current: 1
help: Toggles jointed objects breaking

variable: r_TexturesStreamingNoUpload 
type: int
current: 0
help: 

variable: rope_max_allowed_step 
type: float
current: 0.02
help: 

variable: cr_rotateDampingSpeed 
type: float
current: 0.1
help: 

variable: r_ShadersDirectory 
type: string
current: shaders
help: 

variable: movement_verify_detailed_warp_speed_fast 
type: float
current: 50
help: 

variable: e_sky_box_debug 
type: int
current: 0
help: debug sky box

variable: p_max_LCPCG_subiters_final 
type: int
current: 250
help: Limits the number of LCP CG solver inner iterations during the final iteration (should be of the order of the number of contacts)

variable: r_CustomResPreview 
type: int
current: 1
help: Enable/disable preview of custom resolution rendering in viewport(0 - no preview, 1 - scaled to match viewport, 2 - custom resolution clipped to viewport

variable: cl_world_cookie 
type: int
current: 0
help: world cookie

variable: ai_DrawShooting 
type: string
current: none
help: Name of puppet to show fire stats

variable: e_entities 
type: int
current: 1
help: Activates drawing of entities and brushes

variable: name_tag_hp_height_offset_on_bgmode 
type: float
current: 13
help: nametag hp height offset on bgmode

variable: r_HDRFilmicToe 
type: float
current: 0.1
help: HDR Teo Strenth Fix amount
Usage: r_HDRFilmicToe [Value]

variable: ai_DrawHidespots DUMPTODISK
type: int
current: 0
help: Draws latest hide-spot positions for all agents withing specified range.

variable: camera_debug_target_pos 
type: int
current: 0
help: Debug render camera target pos (blue)

variable: g_ignore_whisper_invite 
type: int
current: 0
help: 0(accept whisper invite), 1(ignore whisper invite)

variable: sv_input_timeout 
type: int
current: 0
help: Experimental timeout in ms to stop interpolating client inputs since last update.

variable: r_ShadowTexFormat 
type: int
current: 5
help: 0=use R16G16 texture format for depth map, 1=try to use R16 format if supported as render target
2=use R32F texture format for depth map
3=use ATI's DF24 texture format for depth map
4=use NVIDIA's D24S8 texture format for depth map
5=use NVIDIA's D16 texture format for depth map
Usage: r_ShadowTexFormat [0-5]


variable: e_GIMaxDistance 
type: float
current: 200
help: Maximum distance of global illumination in meters.
The less the distance the better the quality. Default: 50. Max: 150

variable: tqos_performance_report_period 
type: int
current: 360000
help: tqos performance report period

variable: r_ColorGradingSelectiveColor 
type: int
current: 1
help: Enables color grading.
Usage: r_ColorGradingSelectiveColor [0/1]


variable: um_ship_debug 
type: int
current: 0
help: show ship unit model debug info

variable: q_ShaderHDR REQUIRE_APP_RESTART
type: int
current: 3
help: Defines the shader quality of HDR
Usage: q_ShaderHDR 0=low/1=med/2=high/3=very high (default)

variable: q_ShaderIce REQUIRE_APP_RESTART
type: int
current: 3
help: Defines the shader quality of Ice
Usage: q_ShaderIce 0=low/1=med/2=high/3=very high (default)

variable: q_ShaderSky REQUIRE_APP_RESTART
type: int
current: 3
help: Defines the shader quality of Sky
Usage: q_ShaderSky 0=low/1=med/2=high/3=very high (default)

variable: ac_predictionSmoothingOri 
type: float
current: 0
help: .

variable: ac_predictionSmoothingPos 
type: float
current: 0
help: .

variable: ac_triggercorrectiontimescale 
type: float
current: 0.5
help: .

variable: p_ray_peak_time 
type: float
current: 0
help: Rays that take longer then this (in ms) will use different color

variable: r_ShadersAsyncMaxThreads DUMPTODISK
type: int
current: 1
help: 

variable: cp_debug_picked_entity 
type: int
current: 0
help: 

variable: replay_play_camera 
type: int
current: 1
help: [0, 1]

variable: dynamic_action_bar_distance 
type: float
current: 25
help: dynamic action bar distance (meter)

variable: e_StreamCgfVisObjPriority 
type: float
current: 0.5
help: Priority boost for visible objects
0 - visible objects has no priority over invisible objects, camera direction does not affect streaming
1 - visible objects has highest priority, in case of trashing will produce even more trashing

variable: name_tag_hp_height 
type: float
current: 7
help: nametag hp bar height

variable: dynamic_action_bar_combo_pop 
type: int
current: 1
help: 

variable: ac_debugCarryCorrection 
type: int
current: 0
help: .

variable: e_screenshot_height 
type: int
current: 1500
help: used for e_panorama_screenshot to define the height of the destination image, 1500 default

variable: e_deformable_objects 
type: int
current: 1
help: Enable / Disable morph based deformable objects

variable: ag_logselections 
type: int
current: 0
help: Log animation graph selection results

variable: g_teamlock 
type: int
current: 2
help: Number of players one team needs to have over the other, for the game to deny joining it. 0 disables.

variable: e_custom_dynamic_lod 
type: int
current: 0
help: use dynamic lod

variable: e_use_enhanced_effect 
type: int
current: 1
help: show weapon enhanced effect

variable: r_shootingstar_length 
type: float
current: 0.05
help: Distance across the sky the shooting star travels.

variable: name_tag_hp_height_on_bgmode 
type: float
current: 38
help: nametag hp bar height on bgmode

variable: r_CloudsDebug 
type: int
current: 0
help: Toggles debugging mode for clouds.Usage: r_CloudsDebug [0/1/2]
Usage: r_CloudsDebug = 1: render just screen imposters
Usage: r_CloudsDebug = 2: render just non-screen imposters
Default is 0 (off)

variable: net_ship_controller_debug 
type: int
current: 0
help: 

variable: data_mining_report_interval 
type: float
current: 300
help: 

variable: sys_spec_full 
type: int
current: 4
help: Console variable group to apply settings to multiple variables

sys_spec_full [1/2/3/4/x]:
 ... option_animation = 1/2/3/4/4
 ... option_anti_aliasing = 1/1/2/3/3
 ... option_character_lod = 1/2/3/4/4
 ... option_effect = 1/2/3/4/4
 ... option_shader_quality = 1/2/3/4/4
 ... option_shadow_dist = 1/2/3/4/4
 ... option_shadow_view_dist_ratio = 1/2/3/4/4
 ... option_shadow_view_dist_ratio_character = 1/2/3/4/4
 ... option_terrain_detail = 1/2/3/4/4
 ... option_terrain_lod = 1/2/3/4/4
 ... option_texture_bg = 1/2/3/4/4
 ... option_texture_character = 1/2/3/4/4
 ... option_use_cloud = 0/1/1/1/1
 ... option_use_dof = 0/0/1/1/1
 ... option_use_hdr = 0/0/1/1/1
 ... option_use_shadow = 1/1/1/1/1
 ... option_use_water_reflection = 0/1/1/1/1
 ... option_view_dist_ratio = 1/2/3/4/4
 ... option_view_dist_ratio_vegetation = 1/2/3/4/4
 ... option_view_distance = 1/2/3/4/4
 ... option_volumetric_effect = 1/2/3/4/4
 ... option_water = 1/2/3/4/4


variable: ai_AllowAccuracyDecrease SAVEGAME
type: int
current: 1
help: Set to 1 to enable AI accuracy decrease when target is moving lateraly.

variable: ca_debug_phys_loading 
type: int
current: 0
help: 

variable: net_lan_scanport_num DUMPTODISK
type: int
current: 5
help: Num ports for LAN games scanning

variable: e_ambient_occlusion 
type: int
current: 0
help: Activate non deferred terrain occlusion and indirectional lighitng system

variable: cg_sync_delay_max 
type: int
current: 300
help: movement sync delay margin(ms)

variable: max_time_step 
type: float
current: 0.2
help: Game systems clamped to this frame time

variable: r_PixelSync DUMPTODISK
type: int
current: 0
help: 0 = OFF
1 = LDR
2 = HDR
3 = Debug
4 = Remove individual targets
5 = LDR(Individual)
6 = HDR(Individual)
7 = Debug(Individual)


variable: ag_forceInsideErrorDisc 
type: int
current: 1
help: Force animation to stay within maximum error distance

variable: um_vehicle_water_speed_ratio 
type: float
current: 0.5
help: 

variable: vehicle_controller_GroundAlign_smooth_time 
type: float
current: 1
help: 0.0 ~ 2.0, default : 1.0

variable: sys_budget_dp 
type: float
current: 2000
help: 

variable: e_screenshot_map_camheight 
type: float
current: 100000
help: param for top-down-view screenshot creation, defining the camera height for screenshots, see e_screenshot_map
defines the y position of the bottom right corner of the screenshot-area on the terrain,
0.0 - 1.0 (1.0 is default)

variable: r_ShadersPreactivate DUMPTODISK
type: int
current: 0
help: 

variable: g_difficultyLevel READONLY
type: int
current: 0
help: Difficulty level

variable: profile 
type: int
current: 0
help: Enable profiling.
Usage: profile #
Where # sets the profiling to:
	0: Profiling off
	1: Self Time
	2: Hierarchical Time
	3: Extended Self Time
	4: Extended Hierarchical Time
	5: Peaks Time
	6: Subsystem Info
	7: Calls Numbers
	8: Standard Deviation
	-1: Profiling enabled, but not displayed
Default is 0 (off).

variable: ShowTargetToTargetCastingBar 
type: int
current: 0
help: show target target casting bar

variable: r_StereoNearGeoScale DUMPTODISK
type: float
current: 0.65
help: Scale for near geometry (weapon) that gets pushed into the screen

variable: name_tag_hp_width_offset_on_bgmode 
type: float
current: 13
help: nametag hp width offset on bgmode

variable: r_DeferredShadingLightStencilRatio DUMPTODISK
type: float
current: 0.21
help: Sets screen ratio for deferred lights to use stencil (eg: 0.2 - 20% of screen).
Usage: r_DeferredShadingLightStencilRatio [value]
Default is 0.2

variable: ai_DrawVisCheckQueue DUMPTODISK
type: int
current: 0
help: list of pending vis-check trace requests

variable: r_EnvTexUpdateInterval DUMPTODISK
type: float
current: 0.05
help: Sets the interval between environmental 2d texture updates.
Usage: r_EnvTexUpdateInterval 0.001
Default is 0.001.

variable: e_voxel_fill_mode 
type: int
current: 0
help: Use create brush as fill brush

variable: ui_skill_accessor_update_interval 
type: float
current: 100
help: skill accessor update interval time(ms) [0. ~ 1000]

variable: r_ShadowPoolMaxTimeslicedUpdatesPerFrame 
type: int
current: 1
help: Max number of time sliced shadow pool updates allowed per frame

variable: ai_ProtoRODRegenTime DUMPTODISK
type: float
current: 8
help: Proto

variable: camera_close_up_fade_out_duration 
type: float
current: 1
help: 

variable: net_stats_pass DUMPTODISK
type: string
current: 
help: Password for reporting stats on dedicated server

variable: movement_verify_move_speed_report_skip_rate 
type: float
current: 0.8
help: 

variable: p_log_lattice_tension 
type: int
current: 0
help: If set, breakable objects will log tensions at the weakest spots

variable: camera_pitch_align_speed 
type: int
current: 60
help: 

variable: hit_assistSingleplayerEnabled 
type: int
current: 1
help: Enable/disable minimum damage hit assistance

variable: p_max_LCPCG_fruitless_iters 
type: int
current: 4
help: Maximum number of LCP CG iterations w/o improvement (defined by p_min_LCPCGimprovement)

variable: e_phys_foliage 
type: int
current: 0
help: Enables physicalized foliage (1 - only for dynamic objects, 2 - for static and dynamic)

variable: e_decals_deffered_dynamic_min_size 
type: float
current: 0.1
help: Convert only dynamic decals bigger than X into deferred

variable: net_adaptive_fast_ping 
type: int
current: 1
help: 

variable: e_particles_disable_equipments 
type: int
current: 0
help: disable equipment particles in runtime

variable: con_line_buffer_size 
type: int
current: 1000
help: 

variable: r_TexturesStreamingSync 
type: int
current: 0
help: 

variable: r_OcclusionQueriesMGPU 
type: int
current: 1
help: 0=disabled, 1=enabled (if mgpu supported),


variable: e_modelview_Prefab_offset_x 
type: float
current: 0
help: x modelview Prefab offset (in world space)

variable: e_modelview_Prefab_offset_y 
type: float
current: 0
help: y modelview Prefab offset (in world space)

variable: e_modelview_Prefab_offset_z 
type: float
current: 0
help: z modelview Prefab offset (in world space)

variable: sound_enable_only_activated 
type: int
current: 1
help: enable only activated(1)/disable(0)

variable: g_blood 
type: int
current: 1
help: Toggle blood effects

variable: ca_cloth_vars_reset 
type: int
current: 2
help: 1 - load the values from the next char, 1 - apply normally, 2+ - ignore

variable: ss_use_in_game_loading RESTRICTEDMODE
type: int
current: 1
help: 

variable: cl_password DUMPTODISK
type: string
current: 
help: client password for developer

variable: r_SSGIBlur 
type: int
current: 1
help: SSGI enable blur

variable: e_timer_debug 
type: int
current: 0
help: Timer debug

variable: r_SSDOOptimized 
type: int
current: 8
help: Usage: CV_r_SSDOOptimized 1 2 3
0 off (default)
0x01 reduce sample size
0x02 reduce texture size
0x04 apply median filter(additionl processing)

variable: world_widget_mouse_up_threshold 
type: int
current: 30
help: threshold for mouse down to mouse up position

variable: camera_move_max_inertia 
type: float
current: 2
help: 

variable: cl_sensitivityZeroG DUMPTODISK
type: float
current: 70
help: Set mouse sensitivity in ZeroG!

variable: ai_DrawOffset 
type: float
current: 0.1
help: vertical offset during debug drawing

variable: ca_drawSkeletonFilter 
type: string
current: *
help: Filter for ca_DrawSkeleton

variable: camera_dive_end_depth 
type: float
current: 1
help: 

variable: ai_CrowdControlInPathfind 
type: int
current: 1
help: Toggles AI using crowd control in pathfinding.
Usage: ai_CrowdControlInPathfind [0/1]
Default is 1 (on).

variable: g_quickGame_min_players DUMPTODISK
type: int
current: 0
help: QuickGame option

variable: ca_DelayTransitionAtLoading DUMPTODISK
type: int
current: 1
help: if this is 1, then Delay Transition at streaming loading

variable: r_ShadowsParticleAnimJitterAmount DUMPTODISK
type: float
current: 1
help: Amount of animated jittering for particles shadows.
Usage: r_ShadowsParticleJitterAmount [x], 1. is default

variable: ai_DebugDrawAdaptiveUrgency DUMPTODISK
type: int
current: 0
help: Enables drawing the adaptive movement urgency.

variable: e_character_light_specualr_multy 
type: float
current: 0
help: character light source specualr multy

variable: ca_UseAssetDefinedLod 
type: int
current: 0
help: Lowers render LODs for characters with respect to "consoles_lod0" UDP. Requires characters to be reloaded.

variable: e_particles_max_draw_screen 
type: float
current: 2
help: Pixel size cutoff for rendering particles -- fade out earlier

variable: distance_meter 
type: int
current: 0
help: 0 : off, 1 : on

variable: r_UseEdgeAA 
type: int
current: 0
help: Toggles edge blurring/antialiasing
Usage: r_UseEdgeAA [0/1/2]
Default is 1 (edge blurring)
1 = activate edge blurring mode
2 = activate edge antialiasing mode (previous version)

variable: sys_budget_system_memory_texture 
type: float
current: 32
help: 

variable: ca_AttachmentShadowCullingDist 
type: float
current: 40
help: attachment shadow culling distance

variable: i_mouse_accel DUMPTODISK
type: float
current: 0
help: Set mouse acceleration, 0.0 means no acceleration.
Usage: i_mouse_accel [float number] (usually a small number, 0.1 is a good one)
Default is 0.0 (off)

variable: ag_physErrorMinOuterRadius DUMPTODISK
type: float
current: 0.2
help: 

variable: e_water_ocean_fft 
type: int
current: 1
help: Activates fft based ocean

variable: e_portals 
type: int
current: 1
help: Activates drawing of visareas content (indoors), values 2,3,4 used for debugging

variable: transfer_station_lower 
type: float
current: 0
help: 

variable: ai_sprintDistance DUMPTODISK
type: float
current: 5
help: goalOp sprint distance

variable: OceanWavesSize 
type: float
current: 0.75
help: wave size

variable: r_DeferredShadingHeightBasedAmbient 
type: int
current: 1
help: Toggles experimental height based ambient.
Usage: r_DeferredShadingHeightBasedAmbient [0/1]
Default is 1 (enabled), 0 Disables

variable: cl_sensitivity DUMPTODISK
type: float
current: 20
help: Set mouse sensitivity!

variable: e_ParticlesPoolSize 
type: int
current: 12288
help: Particles pool memory size in KB

variable: max_unit_for_test 
type: int
current: 1000
help: max unit for test

variable: r_MultiGPU 
type: int
current: 0
help: 0=disabled, 1=extra overhead to allow SLI(NVidia) or Crossfire(ATI),
2(default)=automatic detection (currently SLI only, means off for ATI)
should be activated before rendering

variable: e_StreamPredictionUpdateTimeSlice 
type: float
current: 0.4
help: Maximum amount of time to spend for scene streaming priority update in milliseconds

variable: e_customizer_settings_vacuum 
type: int
current: 0
help: Enable the customizer settings "vacuum." This collects the settings used for customizing units, in a local database.

variable: option_camera_fov_set 
type: int
current: 1
help: [1,2,3] 1 : Action, 2 : Classic, 3 : Wide

variable: bot_enable_engine_profiler 
type: int
current: 0
help: bot enable engine profiler

variable: r_StencilBits DUMPTODISK
type: int
current: 8
help: 

variable: ai_MovementSpeedDarkIllumMod SAVEGAME
type: float
current: 0.6
help: Multiplier for movement speed when the target is in dark light condition.

variable: ac_disableSlidingContactEvents 
type: int
current: 0
help: Force disable sliding contact events.

variable: sys_budget_dp_entity 
type: float
current: 200
help: 

variable: cl_immigration_passport_hash 
type: string
current: I3MaAzOL‰ÈM­Y7ë0ëCb
help: cl_immigration_passport_hash

variable: option_character_privacy_status 
type: int
current: 0
help: set character privacy status

variable: r_ssdoAmbientClamp 
type: float
current: 0.5
help: Strength of SSDO ambient occlusion

variable: ca_UseCompiledCalFile 
type: int
current: 0
help: 

variable: ag_ep_showPath 
type: int
current: 0
help: 

variable: q_ShaderShadow REQUIRE_APP_RESTART
type: int
current: 3
help: Defines the shader quality of Shadow
Usage: q_ShaderShadow 0=low/1=med/2=high/3=very high (default)

variable: r_Scratches 
type: int
current: 2
help: Sets fullscreen scratches post-process effect usage.
Usage: r_Scratches [0/1/2]
0: force off
1: force on 
2: on in game-mode only (default)
3: as 2, but independent of sunshafts or sun postion

variable: e_terrain_ao 
type: int
current: 1
help: Activate deferred terrain ambient occlusion

variable: e_voxel_build 
type: int
current: 0
help: Regenerate voxel world

variable: r_ReflectionsQuality DUMPTODISK
type: int
current: 3
help: Toggles reflections quality.
Usage: r_ReflectionsQuality [0/1/2/3]
Default is 0 (terrain only), 1 (terrain + particles), 2 (terrain + particles + brushes), 3 (everything)

variable: e_voxel_debug 
type: int
current: 0
help: Draw voxel debug info

variable: cl_nearPlane DUMPTODISK
type: float
current: 0
help: overrides the near clipping plane if != 0, just for testing.

variable: combat_msg_display_ship_collision 
type: int
current: 1
help: 0 : off, 1 : display

variable: name_tag_hp_offset 
type: float
current: 5
help: nametag hp bar offset

variable: r_FogGlassBackbufferResolveDebug 
type: int
current: 0
help: Prints debug output show current number of backbuffer resolves used to Glass shader with depth fog
Usage: r_FogGlassBackbufferResolveDebug [0/1]
0: disable output (default)
1: enable output

variable: sys_budget_dp_brush 
type: float
current: 500
help: 

variable: es_DebugTimers 
type: int
current: 0
help: This is for profiling and debugging (for game coders and level designer)
By enabling this you get a lot of console printouts that show all entities that receive OnTimer
events - it's good to minimize the call count. Certain entities might require this feature and
using less active entities can often be defined by the level designer.
Usage: es_DebugTimers 0/1

variable: e_foliage_branches_stiffness 
type: float
current: 100
help: Stiffness of branch ropes

variable: r_UseMaterialLayers 
type: int
current: 1
help: Enables material layers rendering.
Usage: r_UseMaterialLayers [0/1]
Default is 1 (on). Set to 0 to disable material layers.


variable: name_tag_fading_duration 
type: int
current: 500
help: set unit name tag fading duration (msec)

variable: sys_noupdate 
type: int
current: 0
help: Toggles updating of system with sys_script_debugger.
Usage: sys_noupdate [0/1]
Default is 0 (system updates during debug).

variable: movement_verify_speed_error_tolerance 
type: float
current: 0.1
help: 

variable: quest_guide_decal_offset 
type: float
current: 1
help: 

variable: v_stabilizeVTOL DUMPTODISK
type: float
current: 0.35
help: Specifies if the air movements should automatically stabilize

variable: s_ReverbReflectionDelay 
type: float
current: -1
help: Sets the current reverb's early reflection in seconds! (overrides dynamic values!)
Usage: s_ReverbReflectionDelay [0/0.3]
Default: -1
-1: Uses the value set within the reverb preset.


variable: ca_MergeAttachmentMeshes 
type: int
current: 1
help: Merge Attachment RenderMesh to CCharInstance

variable: option_hide_bloodlust_mode 
type: int
current: 0
help: 0(show), 1(hide)

variable: ui_eventProfile 
type: int
current: 0
help: 

variable: ca_DrawBBox 
type: int
current: 0
help: if set to 1, the own bounding box of the character is drawn

variable: e_gsm_force_extra_range_include_objects 
type: int
current: 0
help: Includes All Object into extra range shadow map

variable: cl_crouchToggle DUMPTODISK
type: int
current: 0
help: To make the crouch key work as a toggle

variable: net_backofftimeout 
type: int
current: 360
help: Maximum time to allow a remote machine to stall for before disconnecting

variable: mfx_Debug 
type: int
current: 0
help: Turns on MaterialEffects debug messages. 1=Collisions, 2=Breakage, 3=Both

variable: e_shadows_terrain 
type: int
current: 1
help: Enable shadows from terrain

variable: v_pa_surface 
type: int
current: 1
help: Enables/disables vehicle surface particles

variable: p_splash_dist0 
type: float
current: 7
help: Range start for splash event distance culling

variable: p_splash_dist1 
type: float
current: 30
help: Range end for splash event distance culling

variable: r_RainDistMultiplier 
type: float
current: 2
help: Rain layer distance from camera multiplier

variable: r_ShadersIntCompiler DUMPTODISK
type: int
current: 1
help: 

variable: r_distant_rain 
type: int
current: 0
help: Enables distant rain rendering.
Usage: r_distant_rain [0/1]
Default is 1 (on). Set to 0 to disable.

variable: s_MusicSpeakerBackVolume DUMPTODISK
type: float
current: 0
help: Sets the volume of the back speakers.
Usage: s_MusicSpeakerBackVolume 0.3Default is 0.0.

variable: r_texturesstreamingPostponeThresholdMip 
type: int
current: 1
help: Threshold used to postpone high resolution mipmaps.
Usage: r_texturesstreamingPostponeThresholdMip [count]
Default is 1

variable: r_NightVisionCamMovNoiseBlendSpeed 
type: float
current: 2
help: Set nightvision noise amount blend speed.


variable: g_debugaimlook 
type: int
current: 0
help: Debug aim/look direction

variable: picking_target 
type: int
current: 0
help: 0 : rigid, terrain, water, 1 : terrain, water

variable: g_debug_sync_skip_entity_update 
type: int
current: 1
help: 0 : off, 1 : on

variable: e_particles 
type: int
current: 1
help: Activates drawing of particles

variable: sv_gamerules 
type: string
current: SinglePlayer
help: The game rules that the server should use

variable: pelvis_shake_time 
type: float
current: 0.2
help: 

variable: pelvis_shake_warp 
type: int
current: 0
help: 

variable: r_MSAA_samples DUMPTODISK, REQUIRE_APP_RESTART
type: int
current: 0
help: Number of subsamples used when multisampled antialiasing is enabled.
Usage: r_MSAA_samples N (where N is a number >= 0). Attention, N must be supported by given video hardware!
Default: 4. Please note that various hardware implements special MSAA modes via certain combinations of
r_MSAA_quality and r_MSAA_samples. See config/MSAAProfiles*.txt for samples.

variable: ca_ForceUpdateSkeletons 
type: int
current: 0
help: Always update all skeletons, even if not visible.

variable: name_tag_up_scale_limit 
type: float
current: 1.1
help: set unit name tag minimum font size

variable: profile_network 
type: int
current: 0
help: Enables network profiling.


variable: cd_furniture_update_distance 
type: float
current: 64
help: 

variable: e_voxel_make_physics 
type: int
current: 1
help: Physicalize geometry

variable: ca_LodCountRatio 
type: int
current: 2
help: 

variable: r_ShadowsMaskDownScale 
type: int
current: 0
help: Saves video memory by using lower resolution for shadow masks except first one
0=per pixel shadow mask
1=half resolution shadow mask
Usage: r_ShadowsMaskDownScale [0/1]


variable: sv_packetRate 
type: int
current: 30
help: Packet rate on server

variable: ca_DrawIdle2MoveDir 
type: int
current: 0
help: if this is 1, we will draw the initial Idle2Move dir

variable: ca_DrawFootPlants DUMPTODISK
type: int
current: 0
help: if this is 1, it will print some debug boxes at the feet of the character

variable: s_Vol0TurnsVirtual REQUIRE_APP_RESTART
type: int
current: 1
help: Toggles if sounds with zero volume force to go virtual.
Usage: s_Vol0TurnsVirtual [0/1]
Default is 1 (on).

variable: es_UpdateTimer 
type: int
current: 1
help: 
Usage: es_UpdateTimer [0/1]
Default is 1 (on).

variable: ai_LimitNodeGetEnclosing 
type: int
current: 30
help: 

variable: es_SplashThreshold 
type: float
current: 1
help: minimum instantaneous water resistance that is detected as a splashUsage: es_SplashThreshold 200.0


variable: r_HDRSaturation DUMPTODISK
type: float
current: 0.875
help: HDR saturation
Usage: r_HDRSaturation [Value]
Default is 1.0

variable: option_use_dof 
type: int
current: 1
help: Console variable group to apply settings to multiple variables

option_use_dof [0/1/x]:
 ... r_DepthOfField = 1/2/2


variable: option_use_hdr 
type: int
current: 1
help: Console variable group to apply settings to multiple variables

option_use_hdr [0/1/x]:
 ... r_HDRRendering = 0/3/3
 ... r_PostProcessMinimal = 1/0/0


variable: r_SSAO_quality 
type: int
current: 3
help: SSAO shader quality

variable: aux_use_simple_target 
type: int
current: 0
help: 0 : load from asset
1 : use
2 : don't use

variable: profile_sampler 
type: float
current: 0
help: Set to 1 to start sampling profiling

variable: g_quickGame_prefer_favorites DUMPTODISK
type: int
current: 0
help: QuickGame option

variable: e_on_demand_maxsize 
type: float
current: 20
help: Specifies the maximum size of vegetation objects that are physicalized on-demand

variable: e_decals_life_time_scale DUMPTODISK
type: float
current: 1
help: Allows to increase or reduce decals life time for different specs

variable: r_ShaderUsageDelay 
type: int
current: 0
help: Enables a delay between creating a shader resource and actually using it. This can prevent the D3D thread from locking on background shader compilation work. Set to 0 to disable this delay. The default is 3, which means a 3 frame delay.

variable: cl_bandwidth 
type: int
current: 50000
help: Bit rate on client

variable: ca_LodCount0 
type: int
current: 5
help: 

variable: d3d9_TextureFilter DUMPTODISK
type: string
current: TRILINEAR
help: Specifies D3D specific texture filtering type.
Usage: d3d9_TexMipFilter [TRILINEAR/BILINEAR/LINEAR/NEAREST]


variable: movement_verify_move_speed_over_tolerance 
type: float
current: 0.2
help: 

variable: es_HitCharacters 
type: int
current: 1
help: specifies whether alive characters are affected by bullet hits (0 or 1)

variable: name_tag_expedition_show 
type: int
current: 1
help: render name tag of expedition unit

variable: aux_use_collide 
type: int
current: 0
help: 0 : load from asset
1 : use
2 : don't use

variable: cl_frozenSensMax 
type: float
current: 1
help: Frozen sensitivity max

variable: cl_frozenSensMin 
type: float
current: 1
help: Frozen sensitivity min

variable: ca_EnableAssetStrafing 
type: int
current: 1
help: asset strafing is disabled by default

variable: data_mining_perf_interval 
type: float
current: 60
help: 

variable: cl_web_session_enc_key 
type: string
current: xEeUYIxCpqJZpRwKA97VZA==
help: web session encryption key

variable: e_soft_particles 
type: int
current: 1
help: Enables soft particles

variable: net_actor_controller_debug_ragdoll 
type: int
current: 0
help: 

variable: ai_DrawUpdate DUMPTODISK
type: int
current: 0
help: list of AI forceUpdated entities

variable: d3d9_NVPerfHUD 
type: int
current: 0
help: 

variable: e_write_character_patchwork_dds 
type: int
current: 0
help: Print all patchworked textures as DDS files

variable: pl_zeroGSpeedMaxSpeed 
type: float
current: -1
help: (DEPRECATED) Maximum player speed request limit for zeroG while in speed mode.

variable: g_buddyMessagesIngame DUMPTODISK
type: int
current: 1
help: Output incoming buddy messages in chat while playing game.

variable: combo_debug 
type: int
current: 0
help: debug combo timing

variable: ag_showPhysSync 
type: int
current: 0
help: Show physics sync

variable: profile_disk_type_filter 
type: int
current: -1
help: Set the tasks to be filtered
Allowed values are: Textures = 1, Geometry = 2, Animation = 3, Music = 4, Sound = 5The default value is -1 (disabled)
Usage: profile_disk_timeframe [val]

variable: camera_max_pitch 
type: float
current: 88
help: 

variable: r_ShadowsAdaptionRangeClamp DUMPTODISK
type: float
current: 0.04
help: maximum range between caster and reciever to take into account.
Usage: r_ShadowsAdaptionRangeClamp [0.0 - 1.0], default 0.01

variable: e_vegetation_sprites_min_distance 
type: float
current: 8
help: Sets minimal distance when distributed object can be replaced with sprite

variable: ca_DrawEmptyAttachments 
type: int
current: 0
help: draws a wireframe cube if there is no object linked to an attachment

variable: e_terrain_occlusion_culling_max_steps 
type: int
current: 50
help: Max number of tests per ray (for version 0)

variable: aux_use_breast 
type: int
current: 1
help: 

variable: ca_FPWeaponInCamSpace 
type: int
current: 1
help: if this is 1, then we attach the weapon to the camera

variable: e_decals_wrap_debug 
type: int
current: 0
help: debug wrapped decal

variable: e_custom_thread_cut_mesh 
type: int
current: 0
help: turn off thread cut mesh on/off

variable: skill_caster_rotation 
type: int
current: 1
help: rotate caster to target before fire skill

variable: ai_DebugDrawHashSpaceAround DUMPTODISK
type: string
current: 0
help: Validates and draws the navigation node hash space around specified entity.

variable: g_playerInteractorRadius 
type: float
current: 2
help: Maximum radius at which player can interact with other entities

variable: ca_DebugAnimationStreaming DUMPTODISK
type: int
current: 0
help: if this is 1, then it shows what animations are streamed in

variable: lua_stackonmalloc 
type: int
current: 0
help: 

variable: s_MusicSpeakerSideVolume DUMPTODISK
type: float
current: 0.5
help: Sets the volume of the side speakers.
Usage: s_MusicSpeakerSideVolume 0.2Default is 0.5.

variable: ai_InterestScalingAmbient DUMPTODISK
type: float
current: 1
help: Scale the interest value given to Ambient interest items (e.g. static/passive objects)

variable: sys_user_folder 
type: string
current: USER
help: Specifies the user folder

variable: ca_DebugCaps 
type: int
current: 0
help: Display current blended motion capabilities.

variable: ca_DebugText DUMPTODISK
type: int
current: -1
help: if this is 1, it will print some debug text on the screen

variable: sys_budget_sound_memory 
type: float
current: 64
help: 

