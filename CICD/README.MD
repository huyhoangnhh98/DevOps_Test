Set up Jenkins CD follow below details:
- Only run CD when CI success: On configure CD pipeline, select Build Trigger -> Build after other project are build -> Enter your CI name -> select Trigger only if build is stable 

- If you run both CI and CD on the same agent, you do not need to set up checkout source and build on CD pipeline, you can configure CD run on the same workspace of CI: on CD configure