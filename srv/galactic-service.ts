import { ApplicationService, Request } from '@sap/cds';

class GalacticService extends ApplicationService {
    override async init() {
        const { Spacefarers } = this.entities as any;

        this.before('SAVE', Spacefarers.drafts, (req: Request) => {
            const { stardustCollected, wormholeSkill } = req.data as {
                stardustCollected?: number;
                wormholeSkill?: number;
            };

            if (stardustCollected == null || stardustCollected <= 0) {
                req.error(422, 'stardustCollected must be a positive number.');
            }

            if (wormholeSkill == null || wormholeSkill <= 0) {
                req.error(422, 'wormholeSkill must be a positive number.');
            }
        });


        this.after('SAVE', Spacefarers.drafts, (data: any, req: Request) => {
            const fullName = `${data.firstName ?? ''} ${data.lastName ?? ''}`.trim();
            if (fullName) {
                req.info(`Welcome aboard, ${fullName}!`);
            }
        });
        return super.init();
    }
}

module.exports = GalacticService;
