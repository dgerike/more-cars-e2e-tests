import fs from 'fs';
import * as child from 'child_process';
import sanitize from 'sanitize-filename';
const scenarios = JSON.parse(fs.readFileSync('scripts/temp/scenarios.json', {encoding:'utf8', flag:'r'}));

extract(scenarios);
prettify();

function extract(scenarioCollection) {
    process.stdout.write('    found ' + scenarioCollection.length + ' scenarios');

    scenarioCollection.forEach(scenario => {
        process.stdout.write('.');
        let ticketStatus = scenario.jira.status.name;

        let scenarioId = scenario.jira.key;
        scenarioId = scenarioId.substr(4);

        let scenarioType = 'Scenario';
        if (scenario.scenarioType === 'scenario_outline') {
            scenarioType = 'Scenario Outline';
        }

        let title = scenario.jira.summary;
        let sentences = scenario.gherkin;

        let labels = '';
        scenario.jira.labels.forEach(label => {
            labels += `@${label} `;
        });

        let preconditions = '';
        let preconditionTitle = '';
        let backgroundBlock = '';
        if (scenario.preconditions.results.length > 0) {
            scenario.preconditions.results.forEach(precondition => {
                preconditions = precondition.definition;
                preconditionTitle = precondition.jira.summary;
            });
            backgroundBlock = `
                Background: ${preconditionTitle}
                    ${preconditions}
            `;
        }

        let parentIssueTitle = '';
        let parentIssueId = '';
        if (scenario.jira.issuelinks.length > 0) {
            scenario.jira.issuelinks.forEach(link => {
                if (link.type.outward === 'tests') {
                    parentIssueId = link.outwardIssue.key.substr(4);
                    parentIssueTitle = link.outwardIssue.fields.summary;
                }
            });
        }

        let content = `@REQ_MCD_${parentIssueId}
            Feature: ${parentIssueTitle}
            ${backgroundBlock}
            @TEST_MCD_${scenarioId} ${labels}
                ${scenarioType}: MCD-${scenarioId} » ${title} »
                ${sentences}`;

        const targetDirectory = `cypress/integration/e2e/${ticketStatus}`;
        if (!fs.existsSync(targetDirectory)) {
            fs.mkdirSync(targetDirectory);
        }
        const filename = sanitize(title);
        fs.writeFileSync(targetDirectory + `/MCD-${scenarioId} - ${filename}.feature`, content);
    });

    process.stdout.write(' done');
    console.log('');
}

function prettify() {
    console.log('');
    process.stdout.write('Prettifying all scenarios... ');
    const featureDir = "cypress/integration/e2e/";
    child.exec('scripts/libs/ghokin_linux_amd64 fmt replace ' + featureDir);
    process.stdout.write('done');
    console.log('');
}