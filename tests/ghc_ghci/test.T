
test('hpc_ghc_ghci',
     [extra_clean(['A.hi', 'A.o', '.hpc/A.mix', '.hpc/']),
      only_ways(['normal']), when(compiler_profiled(), skip), req_interp],
     run_command, ['$MAKE -s --no-print-directory hpc_ghc_ghci'])
