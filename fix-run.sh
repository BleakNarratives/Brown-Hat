#!/bin/bash
source setup.sh
node -e "
const msg = 'build app: {"app_name":"FoxMeditation","features":["guided_sessions","breathing_exercises","fox_voice_tts","hands_free_mode","progress_tracker","timer","analytics_dashboard"],"architecture":"MVVM","ui_system":"Compose","min_sdk":24,"target_sdk":34,"gradle_version":"8.2.0","kotlin_version":"1.9.20"}';
require('child_process').spawn('node', ['dist/cli.js', 'agent', '--message', msg], {stdio: 'inherit', shell: true});
"
