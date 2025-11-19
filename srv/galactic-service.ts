import { ApplicationService, Request } from '@sap/cds';
import { validateSpacefarer, welcomeSpacefarer } from './galactic-logic';

class GalacticService extends ApplicationService {
    override async init() {
        const { Spacefarers } = this.entities as any;


    this.before('SAVE', Spacefarers.drafts, validateSpacefarer);
    this.after('SAVE', Spacefarers.drafts, welcomeSpacefarer);

        return super.init();
    }
}

module.exports = GalacticService;
