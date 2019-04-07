Sourcery is used for generating JSON parsers.

I edit both Sourcery templates and Sourcery config in Xcode.
Code generation is run as a script phase.

The **generated parser** can be found at  _Source/Generated/JsonParser.swift_.
The struct that is created by the parser — **MyStruct** — can be found at _Source/Routines/Data/Model/Common/MyStruct.swift_

The Sourcery **config file** can be found at _Meta/Configuration/Sourcery.yml_

The original intention was following:
- parser generator shall consist of 2 parts: parser **generator** itself and Sourcery annotation **verifier**
- verifier will check annotations for possible user errors (wrong annotation keys, unsupported annotation values, etc.)
- if verifier found user errors it shall output friendly error messages
- if it hasn't than the actual parsers shall be rendered

Templates:
- **ParsingChecks.swifttemplate** is the verifier
- **Parsing.swifttemplate** is parser generator itself
- **JsonParser.swifttemplate** is output only — it renders either verifier error descriptions or actual parsers
- **ParsingCommon.swifttemplate** contains code used both by **Parsing.swifttemplate** and **ParsingChecks.swifttemplate**
- **Common.swifttemplate** contains code used by any other template (RealmLocalStorage.swifttemplate, WebServiceTesting.swifttemplate, etc.), specifically both by **Parsing.swifttemplate** and **ParsingChecks.swifttemplate**

Please refer to [issue #729](https://github.com/krzysztofzablocki/Sourcery/issues/729).

By default the provided sample project can be successfully built.

You can reproduce the issue:
1. There should be no flag ```--disableCache```
2. Enable include on the 2nd line in **JsonParser.swifttemplate**, it should be ```<%- include("ParsingChecks") %>```

Hence you should get:
```
Error Domain=NSCocoaErrorDomain Code=4 "“SwiftTemplate” couldn’t be moved to “JsonParser.swifttemplate” because either the former doesn’t exist, or the folder containing the latter doesn’t exist." UserInfo={NSSourceFilePathErrorKey=/var/folders/qf/72hdm5lj075ctxsqcl1ffmqc0000gn/T/SwiftTemplate/0.16.0/.build/debug/SwiftTemplate, NSUserStringVariant=(
Move
), NSDestinationFilePath=/Users/user1/Library/Caches/Sourcery/JsonParser.swifttemplate/JrS0iLX2W8X05B6SHP0%2FNA6kMGqbsNnvZf9s%2F9URPHE%3D, NSFilePath=/var/folders/qf/72hdm5lj075ctxsqcl1ffmqc0000gn/T/SwiftTemplate/0.16.0/.build/debug/SwiftTemplate, NSUnderlyingError=0x7f85eb542940 {Error Domain=NSPOSIXErrorDomain Code=2 "No such file or directory"}}
```

There is another issue, not reproducable 100% times.
Sometimes you get a Sourcery exception:
```
Terminating app due to uncaught exception 'NSInvalidArgumentException', reason: 'launch path not accessible'
*** First throw call stack:
(
0   CoreFoundation                      0x00007fff50e33e45 __exceptionPreprocess + 256
1   libobjc.A.dylib                     0x00007fff7ba6b3c6 objc_exception_throw + 48
2   CoreFoundation                      0x00007fff50e33c77 +[NSException raise:format:] + 193
3   Foundation                          0x00007fff5303799f -[NSConcreteTask launchWithDictionary:error:] + 1291
4   SourcerySwift                       0x00000001055f09f3 $SSo6NSTaskC13SourcerySwiftE10runCommand33_97A733547C26B01DA3FEDC2EDE49AED9LL4path9arguments11environment20currentDirectoryPathAC13ProcessResultAELLVSS_SaySSGSDyS2SG0R3Kit0R0VSgtKFZTf4xnnnd_n + 1923
5   SourcerySwift                       0x00000001055e95cb $S13SourcerySwift0B8TemplateC6renderySSypKF + 907
6   Sourcery                            0x0000000104d5f1d2 $S13SourcerySwift0B8TemplateC0A9Framework0C00A0AdEP6renderySS0A7Runtime0C7ContextCKFTW + 66
7   SourceryFramework                   0x00000001057ebad9 $S17SourceryFramework9GeneratorO8generate_8template9argumentsSS0A7Runtime5TypesC_AA8Template_pSDySSSo8NSObjectCGtKFZ + 425
8   Sourcery                            0x0000000104d490ba $S8SourceryAAC8generate33_DB5C4364BFA94633EE953DD412A08C30LL_16forParsingResult10outputPathSS0A9Framework8Template_p_0A7Runtime5TypesC5types_SaySS4file_SDySSSo8_NSRangeVG6rangesSDyS2SG12indentationstG12inlineRangest0N3Kit0N0VtKF + 826
9   Sourcery                            0x0000000104d59852 $S8SourceryAAC8generate33_DB5C4364BFA94633EE953DD412A08C30LL6source13templatePaths6output13parsingResultyAA6SourceO_AA0L0VAA6OutputV0A7Runtime5TypesC5types_SaySS4file_SDySSSo8_NSRangeVG6rangesSDyS2SG12indentationstG12inlineRangesttKFy0A9Framework8Template_pKXEfU_Tf4nnxn_n + 98
10  Sourcery                            0x0000000104d59e31 $S8SourceryAAC8generate33_DB5C4364BFA94633EE953DD412A08C30LL6source13templatePaths6output13parsingResultyAA6SourceO_AA0L0VAA6OutputV0A7Runtime5TypesC5types_SaySS4file_SDySSSo8_NSRangeVG6rangesSDyS2SG12indentationstG12inlineRangesttKFTf4dxnnnn_n + 881
11  Sourcery                            0x0000000104d5b226 $S8SourceryAAC12processFiles_14usingTemplates6output10forceParseSayAA13FolderWatcherO5LocalCGSgAA6SourceO_AA5PathsVAA6OutputVSaySSGtKF0A7Runtime5TypesC5types_SaySS4file_SDySSSo8_NSRangeVG6rangesSDyS2SG12indentationstG12inlineRangestANKcfU1_Tf4nnnxn_n + 3542
12  Sourcery                            0x0000000104d5c1c3 $S8SourceryAAC12processFiles_14usingTemplates6output10forceParseSayAA13FolderWatcherO5LocalCGSgAA6SourceO_AA5PathsVAA6OutputVSaySSGtKFTf4nxnnn_n + 1843
13  Sourcery                            0x0000000104d32778 $S8Sourcery6runCLIyyFySb_S4bSay7PathKit0D0VGA3f2ESaySSGAgEtcfU_ + 2232
14  Sourcery                            0x0000000104d32db0 $SS5bSay7PathKit0A0VGA3d2CSaySSGAeCs5Error_pIegyyyyyggggnnggnzo_S5bA4d2c2eCsAF_pIegnnnnnnnnnnnnnnzo_TR032$S8Sourcery6runCLIyyFySb_S4bSay7A27Kit0D0VGA3f2ESaySSGAgEtcfU_Tf3nnnnnnnnnnnnnnpf_n + 80
15  Commander                           0x0000000104e3c846 $S9Commander7commandyAA11CommandType_px_q_q0_q1_q2_q3_q4_q5_q6_q7_q8_q9_q10_q11_y05ValueD0Qz_ADQy_ADQy0_ADQy1_ADQy2_ADQy3_ADQy4_ADQy5_ADQy6_ADQy7_ADQy8_ADQy9_ADQy10_ADQy11_tKctAA18ArgumentDescriptorRzAaSR_AaSR0_AaSR1_AaSR2_AaSR3_AaSR4_AaSR5_AaSR6_AaSR7_AaSR8_AaSR9_AaSR10_AaSR11_r12_lFyAA0F6ParserCKcfU_ + 4518
16  Commander                           0x0000000104e3cb57 $S9Commander7commandyAA11CommandType_px_q_q0_q1_q2_q3_q4_q5_q6_q7_q8_q9_q10_q11_y05ValueD0Qz_ADQy_ADQy0_ADQy1_ADQy2_ADQy3_ADQy4_ADQy5_ADQy6_ADQy7_ADQy8_ADQy9_ADQy10_ADQy11_tKctAA18ArgumentDescriptorRzAaSR_AaSR0_AaSR1_AaSR2_AaSR3_AaSR4_AaSR5_AaSR6_AaSR7_AaSR8_AaSR9_AaSR10_AaSR11_r12_lFyAA0F6ParserCKcfU_TA + 279
17  Commander                           0x0000000104e298d3 $S9Commander16AnonymousCommandVAA0C4TypeA2aDP3runyyAA14ArgumentParserCKFTW + 51
18  Commander                           0x0000000104e29d23 $S9Commander11CommandTypePAAE3runys5NeverOSSSgF + 403
19  Sourcery                            0x0000000104d31eba $S8Sourcery6runCLIyyF + 2314
20  Sourcery                            0x0000000104d3092d main + 61
21  libdyld.dylib                       0x00007fff7d2903d5 start + 1
)
libc++abi.dylib: terminating with uncaught exception of type NSException
Using configuration file at '/Users/user1/Desktop/Broadway/Meta/Configuration/Sourcery.yml'
Scanning sources...
Found 16 types.
Loading templates...
Loaded 1 templates.
Generating code...
/Users/user1/Desktop/Broadway/Pods/Sourcery/bin/sourcery: line 12:  7437 Abort trap: 6           "${DIR}"/Sourcery.app/Contents/MacOS/Sourcery "$@"

```

You can try to reproduce it:
1. Add flag ```--disableCache```
2. Enable include on the 2nd line in **JsonParser.swifttemplate**, it should be ```<%- include("ParsingChecks") %>```

Sometimes there is even worse situation: you change the template, add intentionally any error to it, but the build is successful!
Sourcery is silent: it doesn't render anything, doesn't output any error.

You can try to reproduce it:
1. Get an exception as described in previous issue
2. Add flag ```--disableCache```
3. Disable include on the 2nd line in **JsonParser.swifttemplate**, it should be ```<%# include("ParsingChecks") %>```
4. Build project (will successfully build)
5. Enable include on the 2nd line in **JsonParser.swifttemplate**, it should be ```<%- include("ParsingChecks") %>```
6. Build project (will successfully build, but it shouldn't)
7. Now we are in this Sourcery _silent_ mode. Try to edit comment on the 24 line in **JsonParser.swifttemplate**. Nothing will happen.

To get out of this _silent_ mode:
1. Clear Sourcery cache at ```~/Library/Caches/Sourcery```
2. Remove flag ```--disableCache```
3. Disable include on the 2nd line in **JsonParser.swifttemplate**, it should be ```<%# include("ParsingChecks") %>```

This stuff might be hard to reproduce. Should try combinations of
- enable/disable flag ```--disableCache```
- enable/disable include ```<%- include("ParsingChecks") %>```
- clear Sourcery cache at ```~/Library/Caches/Sourcery```
