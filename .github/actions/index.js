const core = require('@actions/core');
const github = require('@actions/github');

try {
  // `who-to-greet` input defined in action metadata file
  const time = (new Date()).toTimeString();
  console.log(`Hello world, this is ${time}`);
} catch (error) {
  core.setFailed(error.message);
}
