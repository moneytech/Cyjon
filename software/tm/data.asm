;===============================================================================
; Copyright (C) Andrzej Adamczyk (at https://blackdev.org/). All rights reserved.
; GPL-3.0 License
;
; Main developer:
;	Andrzej Adamczyk
;===============================================================================

tm_string_console_header			db	"^[hTask Manager]"
tm_string_console_header_end:

align	STATIC_QWORD_SIZE_byte,			db	STATIC_EMPTY
tm_stream_meta:
	times	KERNEL_STREAM_META_SIZE_byte	db	STATIC_EMPTY

tm_string_init					db	STATIC_SEQUENCE_CURSOR_DISABLE, STATIC_SEQUENCE_CLEAR
tm_string_init_end:

tm_string_uptime				db	STATIC_SEQUENCE_COLOR_DEFAULT, "Up:"
tm_string_uptime_end:
tm_string_uptime_position_and_color		db	"^[t1;3;0]^[c0F]"
tm_string_uptime_position_and_color_end:
tm_string_uptime_seconds			db	STATIC_SEQUENCE_COLOR_DEFAULT, " s"
tm_string_uptime_seconds_end:
tm_string_uptime_minutes			db	STATIC_SEQUENCE_COLOR_DEFAULT, " min  "
tm_string_uptime_minutes_end:
tm_string_uptime_hours				db	STATIC_SEQUENCE_COLOR_DEFAULT, " h    "
tm_string_uptime_hours_end:
tm_string_uptime_days				db	STATIC_SEQUENCE_COLOR_DEFAULT, " days "
tm_string_uptime_days_end:
tm_string_tasks					db	"^[t1;0;1]Tasks: "
tm_string_tasks_end:
tm_string_tasks_position_and_color		db	"^[t1;7;1]", STATIC_SEQUENCE_COLOR_WHITE
tm_string_tasks_position_and_color_end:
tm_string_tasks_total				db	STATIC_SEQUENCE_COLOR_DEFAULT, ", ^[c0A]"
tm_string_tasks_total_end:
tm_string_tasks_threads				db	" thr"
tm_string_tasks_threads_end:
tm_string_memory				db	"^[t1;0;2]KiB Mem: "
tm_string_memory_end:
tm_string_memory_total_position_and_color	db	"^[t1;9;2]", STATIC_SEQUENCE_COLOR_WHITE
tm_string_memory_total_position_and_color_end:
tm_string_memory_total				db	STATIC_SEQUENCE_COLOR_DEFAULT, " [t], ", STATIC_SEQUENCE_COLOR_WHITE
tm_string_memory_total_end:
tm_string_memory_free				db	STATIC_SEQUENCE_COLOR_DEFAULT, " [f], ", STATIC_SEQUENCE_COLOR_WHITE
tm_string_memory_free_end:
tm_string_memory_used				db	STATIC_SEQUENCE_COLOR_DEFAULT, " [u] "
tm_string_memory_used_end:
tm_string_header_position			db	"^[t1;0;4]"
tm_string_header_position_end:
tm_string_header_position_and_color		db	"^[cA0]"
tm_string_header_position_and_color_end:
tm_string_header				db	"  PID %CPU %Mem Time+ Process"
tm_string_header_end:
tm_string_first_row_position			db	"^[t1;0;5]"
tm_string_first_row_position_end:
tm_string_table_row_next			db	STATIC_SCANCODE_NEW_LINE, STATIC_SEQUENCE_CLEAR_LINE
tm_string_table_row_next_end:

tm_string_menu					db	"^[t1;0;*]^[cA0]Q^[c07]uit ^[c80]K^[c08]ill ^[c80]F^[c08]ind"
tm_string_menu_end:

tm_string_end_of_work				db	"^[t1;*;*]", STATIC_SEQUENCE_CURSOR_ENABLE
tm_string_end_of_work_end:

tm_microtime					dq	STATIC_EMPTY

tm_string_program_color				db	"^[c*7]"
tm_string_program_color_end:

align	STATIC_QWORD_SIZE_byte,			db	STATIC_NOTHING
tm_ipc_data:
	times KERNEL_IPC_STRUCTURE.SIZE		db	STATIC_EMPTY

tm_string_value_format		times 20	db	STATIC_EMPTY
