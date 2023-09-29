/* vim9instr.c */
isn_T *generate_instr(cctx_T *cctx, isntype_T isn_type);
isn_T *generate_instr_drop(cctx_T *cctx, isntype_T isn_type, int drop);
isn_T *generate_instr_type(cctx_T *cctx, isntype_T isn_type, type_T *type);
isn_T *generate_instr_debug(cctx_T *cctx);
int generate_CONSTRUCT(cctx_T *cctx, class_T *cl);
int generate_GET_OBJ_MEMBER(cctx_T *cctx, int idx, type_T *type);
int generate_GET_ITF_MEMBER(cctx_T *cctx, class_T *itf, int idx, type_T *type);
int generate_STORE_THIS(cctx_T *cctx, int idx);
int may_generate_2STRING(int offset, int tolerant, cctx_T *cctx);
int generate_add_instr(cctx_T *cctx, vartype_T vartype, type_T *type1, type_T *type2, exprtype_T expr_type);
vartype_T operator_type(type_T *type1, type_T *type2);
int generate_two_op(cctx_T *cctx, char_u *op);
int check_compare_types(exprtype_T type, typval_T *tv1, typval_T *tv2);
int generate_COMPARE(cctx_T *cctx, exprtype_T exprtype, int ic);
int generate_CONCAT(cctx_T *cctx, int count);
int generate_2BOOL(cctx_T *cctx, int invert, int offset);
int generate_COND2BOOL(cctx_T *cctx);
int generate_TYPECHECK(cctx_T *cctx, type_T *expected, int number_ok, int offset, int is_var, int argidx);
int generate_SETTYPE(cctx_T *cctx, type_T *expected);
int generate_tv_PUSH(cctx_T *cctx, typval_T *tv);
int generate_PUSHNR(cctx_T *cctx, varnumber_T number);
int generate_PUSHBOOL(cctx_T *cctx, varnumber_T number);
int generate_PUSHSPEC(cctx_T *cctx, varnumber_T number);
int generate_PUSHF(cctx_T *cctx, float_T fnumber);
int generate_PUSHS(cctx_T *cctx, char_u **str);
int generate_PUSHCHANNEL(cctx_T *cctx);
int generate_PUSHJOB(cctx_T *cctx);
int generate_PUSHBLOB(cctx_T *cctx, blob_T *blob);
int generate_PUSHFUNC(cctx_T *cctx, char_u *name, type_T *type, int may_prefix);
int generate_PUSHOBJ(cctx_T *cctx);
int generate_AUTOLOAD(cctx_T *cctx, char_u *name, type_T *type);
int generate_GETITEM(cctx_T *cctx, int index, int with_op);
int generate_SLICE(cctx_T *cctx, int count);
int generate_CHECKLEN(cctx_T *cctx, int min_len, int more_OK);
int generate_STORE(cctx_T *cctx, isntype_T isn_type, int idx, char_u *name);
int generate_CLASSMEMBER(cctx_T *cctx, int load, class_T *cl, int idx);
int generate_STORENR(cctx_T *cctx, int idx, varnumber_T value);
int generate_LOAD(cctx_T *cctx, isntype_T isn_type, int idx, char_u *name, type_T *type);
int generate_LOADOUTER(cctx_T *cctx, int idx, int nesting, int loop_depth, int loop_idx, type_T *type);
int generate_LOADV(cctx_T *cctx, char_u *name);
int generate_UNLET(cctx_T *cctx, isntype_T isn_type, char_u *name, int forceit);
int generate_LOCKCONST(cctx_T *cctx);
int generate_OLDSCRIPT(cctx_T *cctx, isntype_T isn_type, char_u *name, int sid, type_T *type);
int generate_VIM9SCRIPT(cctx_T *cctx, isntype_T isn_type, int sid, int idx, type_T *type);
int generate_NEWLIST(cctx_T *cctx, int count, int use_null);
int generate_NEWDICT(cctx_T *cctx, int count, int use_null);
int generate_FUNCREF(cctx_T *cctx, ufunc_T *ufunc, class_T *cl, int fi, int *isn_idx);
int generate_NEWFUNC(cctx_T *cctx, char_u *lambda_name, char_u *func_name);
int generate_DEF(cctx_T *cctx, char_u *name, size_t len);
int generate_JUMP(cctx_T *cctx, jumpwhen_T when, int where);
int generate_WHILE(cctx_T *cctx, int funcref_idx);
int generate_JUMP_IF_ARG(cctx_T *cctx, isntype_T isn_type, int arg_off);
int generate_FOR(cctx_T *cctx, int loop_idx);
int generate_ENDLOOP(cctx_T *cctx, loop_info_T *loop_info);
int generate_TRYCONT(cctx_T *cctx, int levels, int where);
int check_internal_func_args(cctx_T *cctx, int func_idx, int argcount, int method_call, type2_T **argtypes, type2_T *shuffled_argtypes);
int generate_BCALL(cctx_T *cctx, int func_idx, int argcount, int method_call);
int generate_LISTAPPEND(cctx_T *cctx);
int generate_BLOBAPPEND(cctx_T *cctx);
int generate_CALL(cctx_T *cctx, ufunc_T *ufunc, class_T *cl, int mi, int pushed_argcount);
int generate_UCALL(cctx_T *cctx, char_u *name, int argcount);
int check_func_args_from_type(cctx_T *cctx, type_T *type, int argcount, int at_top, char_u *name);
int generate_PCALL(cctx_T *cctx, int argcount, char_u *name, type_T *type, int at_top);
int generate_DEFER(cctx_T *cctx, int var_idx, int obj_method, int argcount);
int generate_STRINGMEMBER(cctx_T *cctx, char_u *name, size_t len);
int generate_ECHO(cctx_T *cctx, int with_white, int count);
int generate_MULT_EXPR(cctx_T *cctx, isntype_T isn_type, int count);
int generate_ECHOWINDOW(cctx_T *cctx, int count, long time);
int generate_SOURCE(cctx_T *cctx, int sid);
int generate_PUT(cctx_T *cctx, int regname, linenr_T lnum);
int generate_EXEC_copy(cctx_T *cctx, isntype_T isntype, char_u *line);
int generate_EXEC(cctx_T *cctx, isntype_T isntype, char_u *str);
int generate_LEGACY_EVAL(cctx_T *cctx, char_u *line);
int generate_EXECCONCAT(cctx_T *cctx, int count);
int generate_RANGE(cctx_T *cctx, char_u *range);
int generate_UNPACK(cctx_T *cctx, int var_count, int semicolon);
int generate_cmdmods(cctx_T *cctx, cmdmod_T *cmod);
int generate_undo_cmdmods(cctx_T *cctx);
int generate_store_var(cctx_T *cctx, assign_dest_T dest, int opt_flags, int vimvaridx, type_T *type, char_u *name, lhs_T *lhs);
int inside_loop_scope(cctx_T *cctx);
int generate_store_lhs(cctx_T *cctx, lhs_T *lhs, int instr_count, int is_decl);
void may_generate_prof_end(cctx_T *cctx, int prof_lnum);
void delete_instr(isn_T *isn);
void clear_instr_ga(garray_T *gap);
/* vim: set ft=c : */
